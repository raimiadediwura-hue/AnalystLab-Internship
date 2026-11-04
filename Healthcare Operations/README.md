# Healthcare Operations & Financial Intelligence Dashboard

## Project Overview

This project focuses on analysing healthcare operations to understand encounter patterns, healthcare costs, payer coverage, and patient activity.

The project was undertaken as part of my internship at **AnalystLab Africa**. Using healthcare datasets, I explored how data analytics can help healthcare organisations monitor operational performance, identify financial concerns, and make informed decisions.

The analysis was conducted using **Microsoft Power BI** for data cleaning, transformation, data modelling, and visualisation, and **Microsoft SQL Server (SSMS)** for querying and analysing the data.

## Business Problems 

A healthcare organisation wants to improve its understanding of hospital operations, encounter costs, payer coverage, and patient activity.

The organisation needs insights that can help decision-makers:
- Monitor healthcare encounter trends.
- Understand the distribution of encounter types.
- Evaluate healthcare costs.
- Identify encounters with zero recorded payer coverage.
- Examine patient activity and return visits.
- Identify data quality issues that may affect reporting.

## Project Objectives

1. Analyse encounter volumes and trends over time.
2. Examine the distribution of healthcare encounter classes.
3. Investigate encounter durations, particularly those exceeding 24 hours.
4. Evaluate total claim costs and payer coverage.
5. Examine patient activity and readmission patterns.
6. Identify data quality issues and recommend improvements.

## Tools & Technologies

- **Microsoft Power BI:** Data cleaning, transformation, data modelling, DAX, and dashboard development.
- **Microsoft SQL Server (SSMS):** SQL queries and data analysis.
- **Microsoft Excel:** Initial data inspection and validation.

## Dataset Description

The project datasets contain historical healthcare information.

### 1. Encounters Dataset

Contains 27,891 records and 14 columns.

| Column | Description |
|---|---|
| Id | Unique encounter identifier |
| START | Encounter start date and time |
| STOP | Encounter end date and time |
| PATIENT | Patient identifier |
| ORGANIZATION | Healthcare organisation identifier |
| PAYER | Payer identifier |
| ENCOUNTERCLASS | Type or class of encounter |
| CODE | Encounter code |
| DESCRIPTION | Encounter description |
| BASE_ENCOUNTER_COST | Base encounter cost |
| TOTAL_CLAIM_COST | Total claim cost |
| PAYER_COVERAGE | Amount recorded as payer coverage |
| REASONCODE | Encounter reason code |
| REASONDESCRIPTION | Description of encounter reason |

### 2. Patients Dataset

Contains 974 records and 20 columns, including:

- Patient ID
- Date of birth
- Gender
- Marital status
- Race and ethnicity
- Birthplace
- Address and location information

### 3. Payers

contains 76 records and 7 columns, including:

- id
- Name
- Address
- City
- State_Headquarted
- Zip
- Code

### 4. Procedures

contains 47,701 and 9 columns, including:

- Start
- Stop
- Patient
- Encounter
- Code
- Description
- Base_cost
- Reasoncode
- Reasondescription

## Methodolgy

### 1. Data Cleaning and Preparation

Data preparation was carried out in Power BI using Power Query.

Activities included:
- Reviewing column names and data types.
- Checking for duplicate records.
- Identifying missing and null values.
- Cleaning text columns.
- Converting date and financial columns to appropriate data types.
- Creating an encounter date column from the START field.
- Calculating encounter duration using START and STOP.
- Investigating zero payer coverage and unusually long encounter durations.

### 2. Data Modelling

A date table was created to support time-based analysis.

The encounters and patients datasets were modelled using their common patient identifier.

A one-to-many relationship was established between the patients and encounters tables, with the patients table on the one side and encounters on the many side.

A one-to-many relationship was created between other tables too.

A date relationship was also created between the date table and the encounter date column.

### 3. SQL Modelling

SQL queries were used to investigate:
- Yearly encounter volumes.
- Encounter distribution by class.
- Encounter duration categories.
- Zero payer coverage records.
- Average claim costs.
- Patient activity and readmission patterns.

### 4. Dashboard Development

An interactive Power BI dashboard was developed to present operational and financial insights.

The dashboard focuses on:
- Overall encounter performance.
- Encounter trends and cost.
- Payer coverage and Procedure utilisation.

## Key Findings

### 1. Dataset Overview
- Total encounters: **27,891**
- Total patient records: **974**
- No duplicate encounter IDs or patient IDs were identified.
- All encounter patient references matched records in the patients dataset.

### 2. Payer Coverage
- Encounters with zero recorded payer coverage: **13,586**
- Percentage of encounters with zero recorded payer coverage: **48.7%**

This highlights the need to investigate how healthcare costs are funded and recorded.

### 3. Encounter Duration
- Encounters lasting longer than 24 hours: **75**
- Percentage of total encounters: **0.27%**

These records may require further investigation to understand the reasons for extended encounter durations.

### 4. Missing Encounter Information
- Encounters with missing reason codes: **19,541**
- Percentage of total encounters: **70.1%**

Missing reason codes limit the ability to conduct a comprehensive analysis of encounter reasons.

## Recommendations

Based on the findings, the following recommendations are proposed:

1. **Improve payer coverage monitoring:** Investigate encounters with zero recorded payer coverage to determine whether they represent self-funded services, uncovered expenses, or incomplete records.

2. **Improve data completeness:** Strengthen data collection processes to reduce missing encounter reason codes.

3. **Review extended encounters:** Investigate encounters lasting more than 24 hours to understand their causes and identify possible operational bottlenecks.

4. **Monitor operational performance:** Use interactive dashboards and regular reporting to track encounter volumes, claim costs, payer coverage, and patient activity

## Limitations

- Missing reason codes affected the completeness of encounter reason analysis.
- Zero recorded payer coverage does not necessarily mean that an encounter was uninsured or unpaid.
- Extended encounter durations require further validation before being interpreted as operational inefficiencies.
- Patient return visits should not automatically be interpreted as readmissions without clearly defined admission and discharge criteria.

## Conclusion

This project demonstrates how healthcare data can be transformed into meaningful operational and financial insights.

The analysis identified important areas requiring attention, particularly zero recorded payer coverage, missing encounter information, and extended encounter durations.

It also highlighted the importance of data quality, appropriate data modelling, and clearly documented analytical limitations.

Through this project, I strengthened my practical skills in Power Query, SQL, data modelling, DAX, data visualisation, and business analytics.

## Project Deliverables

- Cleaned healthcare datasets.
- SQL analysis queries.
- Power BI data model.
- Interactive healthcare operations dashboard.
- Executive summary containing findings and recommendations.

