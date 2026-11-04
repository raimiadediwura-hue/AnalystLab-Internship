-- OBJECTIVE 1: ENCOUNTERS OVERVIEW

-- a. How many total encounters occurred each year?

SELECT 
	YEAR(START) AS Encounter_Year,
	COUNT(id) AS Total_Encounters
FROM dbo.encounters
GROUP BY YEAR(START)
ORDER BY Encounter_Year;

-- b. For each year, what percentage of all encounters belonged to each encounter class
-- (ambulatory, outpatient, wellness, urgent care, emergency, and inpatient)?

SELECT
    YEAR(START) AS Encounter_Year,
    ENCOUNTERCLASS,
    COUNT(*) AS Total_Encounters,

    CAST(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER (
            PARTITION BY YEAR(START)
        )
        AS DECIMAL(10,2)
    ) AS Percentage
FROM dbo.Encounters
GROUP BY
    YEAR(START),
    ENCOUNTERCLASS
ORDER BY
    Encounter_Year,
    Percentage DESC;

-- c. What percentage of encounters were over 24 hours versus under 24 hours?

WITH EncounterDuration AS
(
    SELECT
        Id,
        DATEDIFF(SECOND, START, STOP) / 3600.0
        AS Duration_Hours
    FROM dbo.Encounters
)
SELECT
    CASE
        WHEN Duration_Hours > 24
            THEN 'Over 24 Hours'
        ELSE '24 Hours or Less'
    END AS Duration_Category,
    COUNT(*) AS Total_Encounters,
    CAST(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER()
        AS DECIMAL(10,2)
    ) AS Percentage
FROM EncounterDuration
GROUP BY
    CASE
        WHEN Duration_Hours > 24
            THEN 'Over 24 Hours'
        ELSE '24 Hours or Less'
    END;

-- OBJECTIVE 2: COST & COVERAGE INSIGHTS

-- a. How many encounters had zero payer coverage, and what percentage of total encounters does this represent?

SELECT
    COUNT(*) AS Total_Encounters,
    SUM(
        CASE
            WHEN PAYER_COVERAGE = 0 THEN 1
            ELSE 0
        END
    ) AS Zero_Coverage_Encounters,
    CAST(
        SUM(
            CASE
                WHEN PAYER_COVERAGE = 0 THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*)
        AS DECIMAL(10,2)
    ) AS Zero_Coverage_Percentage
FROM dbo.Encounters;

-- b. What are the top 10 most frequent procedures performed and the average base cost for each?

SELECT TOP 10
    CODE AS Procedure_Code,
    DESCRIPTION AS Procedure_Name,
    COUNT(*) AS Times_Performed,
    CAST(
        AVG(BASE_ENCOUNTER_COST)
        AS DECIMAL(18,2)
    ) AS Average_Base_Cost
FROM dbo.Encounters
GROUP BY
    CODE,
    DESCRIPTION
ORDER BY
    Times_Performed DESC;

-- c. What are the top 10 procedures with the highest average base cost and the number of times they were performed?

SELECT TOP 10
    CODE AS Procedure_Code,
    DESCRIPTION AS Procedure_Name,
    CAST(
        AVG(BASE_ENCOUNTER_COST)
        AS DECIMAL(18,2)
    ) AS Average_Base_Cost,
    COUNT(*) AS Times_Performed
FROM dbo.Encounters
GROUP BY
    CODE,
    DESCRIPTION
ORDER BY
    Average_Base_Cost DESC;

-- d. What is the average total claim cost for encounters, broken down by payer?

SELECT
    PAYER AS Payer_ID,
    COUNT(*) AS Total_Encounters,
    CAST(
        AVG(TOTAL_CLAIM_COST)
        AS DECIMAL(18,2)
    ) AS Average_Total_Claim_Cost,
    CAST(
        SUM(TOTAL_CLAIM_COST)
        AS DECIMAL(18,2)
    ) AS Total_Claim_Cost,
    CAST(
        AVG(PAYER_COVERAGE)
        AS DECIMAL(18,2)
    ) AS Average_Payer_Coverage
FROM dbo.Encounters
GROUP BY PAYER
ORDER BY Average_Total_Claim_Cost DESC;

-- OBJECTIVE 3: PATIENT BEHAVIOR ANALYSIS

-- a. How many unique patients were admitted each quarter over time?

SELECT
    YEAR(START) AS Admission_Year,
    DATEPART(QUARTER, START) AS Admission_Quarter,
    COUNT(DISTINCT PATIENT) AS Unique_Patients_Admitted
FROM dbo.Encounters
WHERE ENCOUNTERCLASS = 'inpatient'
GROUP BY
    YEAR(START),
    DATEPART(QUARTER, START)
ORDER BY
    Admission_Year,
    Admission_Quarter;

-- b. How many patients were readmitted within 30 days of a previous encounter?

WITH PreviousAdmission AS
(
    SELECT
        PATIENT,
        Id,
        START,
        STOP,
        LAG(STOP) OVER (
            PARTITION BY PATIENT
            ORDER BY START
        ) AS Previous_Discharge

    FROM dbo.Encounters

    WHERE ENCOUNTERCLASS = 'inpatient'
),
Readmissions AS
(
    SELECT
        PATIENT,
        Id,
        START,
        Previous_Discharge,
        DATEDIFF(
            DAY,
            Previous_Discharge,
            START
        ) AS Days_Between_Admissions
    FROM PreviousAdmission
    WHERE Previous_Discharge IS NOT NULL
      AND START > Previous_Discharge
      AND START <= DATEADD(
          DAY,
          30,
          Previous_Discharge
      )
)
SELECT
    COUNT(DISTINCT PATIENT) AS Patients_Readmitted_Within_30_Days,
    COUNT(*) AS Total_Readmission_Events
FROM Readmissions;

-- c. Which patients had the most readmissions?

WITH PreviousAdmission AS
(
    SELECT
        PATIENT,
        START,
        STOP,
    LAG(STOP) OVER (
            PARTITION BY PATIENT
            ORDER BY START
        ) AS Previous_Discharge
    FROM dbo.Encounters
    WHERE ENCOUNTERCLASS = 'inpatient'
),
Readmissions AS
(
    SELECT
        PATIENT
    FROM PreviousAdmission
    WHERE Previous_Discharge IS NOT NULL
      AND START > Previous_Discharge
      AND START <= DATEADD(
          DAY,
          30,
          Previous_Discharge
      )
)
SELECT TOP 10
    P.Id AS Patient_ID,
    P.FIRST,
    P.LAST,
    COUNT(*) AS Total_Readmissions
FROM Readmissions R
INNER JOIN dbo.Patients P
    ON R.PATIENT = P.Id
GROUP BY
    P.Id,
    P.FIRST,
    P.LAST
ORDER BY
    Total_Readmissions DESC;


