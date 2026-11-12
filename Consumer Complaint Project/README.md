# Consumer Complaints Analysis

## Project Overview

he Consumer Complaints Analysis project focuses on analysing consumer complaint data to identify trends, understand customer concerns, evaluate financial product performance and assess company response patterns.

The project uses a dataset containing **62,516 complaint records and 12 columns**, covering May 2017 to August 2023.

Using Microsoft Power BI, the dataset was cleaned, transformed, modelled and analysed to develop an interactive dashboard that provides insights into complaint volumes, frequently reported issues, financial product distribution, company response categories and complaint-forwarding intervals.

The primary objective is to transform raw consumer complaint records into meaningful business insights that can help financial institutions identify recurring customer problems, monitor complaint management performance and make informed decisions to improve service delivery and customer experience.

### Business Problem 

Financial institutions receive complaints across different financial products and services. However, without proper analysis, identifying recurring customer concerns, monitoring complaint trends and evaluating response performance can be challenging.

This project addresses the need for a structured analytical approach to understanding consumer complaints and identifying areas that require operational improvement.

## Project Objectives

- Analyse overall consumer complaint volumes.
- Identify annual and monthly complaint trends.
- Determine which financial products generate the highest complaints.
- Identify the most frequently reported issues.
- Examine complaints by sub-product and sub-issue.
- Evaluate company response categories.
- Measure the percentage of complaints receiving timely responses.
- Identify complaints that remain in progress.
- Calculate average and median complaint-forwarding intervals.
- Evaluate year-over-year changes in complaint volumes.
- Provide actionable recommendations based on the findings.

## Dataset Description

The dataset contains **62,516 records and 12 columns**.

| Column | Description |
|---|---|
| Complaint ID | Unique identifier for each complaint |
| Submitted via | Channel through which the complaint was submitted |
| Date submitted | Date the complaint was submitted |
| Date received | Date the complaint was received |
| State | State associated with the complaint |
| Product | Financial product associated with the complaint |
| Sub-product | Specific category of the financial product |
| Issue | Main problem reported by the consumer |
| Sub-issue | More specific description of the reported problem |
| Company public response | Company's public response to the complaint |
| Company response to consumer | Outcome or status of the company's response |
| Timely response? | Indicates whether a timely response was recorded |

## Tools and Technologies

- **Microsoft Power BI:** Data modelling, DAX calculations and dashboard development.
- **Power Query:** Data cleaning and transformation.
- **DAX:** KPI calculations and analytical measures.
- **Microsoft Excel:** Initial dataset inspection and validation.

## Methodology

### 1. Data Import and Inspection

The consumer complaints dataset was imported into Power BI.

Initial inspection was conducted to understand the dataset structure, identify column types and assess data quality.

### 2. Data Cleaning and Preparation

The following preparation activities were carried out:

- Reviewed column names and data types.
- Converted submission and received date columns into appropriate date formats.
- Checked for missing values and blank records.
- Examined duplicate complaint IDs.
- Reviewed categorical values in product, issue and response columns.
- Examined inconsistencies in the date fields.
- Validated complaint records before KPI calculations.

### 3. Data Modelling

A date table was created to support time-based analysis.

The date table was connected to the complaint submission date to enable annual, monthly and year-over-year analysis.

### 4. KPI Development

The following KPIs were developed:

| KPI | Definition |
|---|---|
| Total Complaints | Total number of unique complaint records |
| Annual Complaint Volume | Number of complaints received per year |
| Monthly Complaint Volume | Number of complaints received per month |
| Complaints by Product | Complaint count grouped by financial product |
| Complaints by Issue | Complaint count grouped by reported issue |
| Sub-product and Sub-issue Analysis | Complaint distribution by specific product and issue combinations |
| Product Contribution (%) | Percentage contribution of each product to total complaints |
| Company Response Distribution | Distribution of complaints by company response category |
| Timely Response (%) | Percentage of complaints marked Yes for timely response |
| In-progress Complaints | Number of complaints marked In progress |
| Average Forwarding Interval | Average number of days between submission and received dates |
| Median Forwarding Interval | Median number of days between submission and received dates |
| Year-over-Year Change | Percentage change in complaint volume compared with the previous year |

## Key Performance Indicators (KPIs)

| KPI | Result |
|---|---:|
| Total Complaints | 62,516 |
| Average Forwarding Interval | 1.22 days |
| Timely Response Rate | 93.77% |
| In-progress Complaints | 1,494 |

## Key Findings

### 1. Financial Product Distribution

- Checking and savings accounts recorded the highest complaint volume, with **24,814 complaints (39.69%)**.
- Credit cards and prepaid cards followed with **16,197 complaints (25.91%)**.
- Together, these two product categories accounted for approximately **65.60%** of all complaints.

### 2. Most Frequently Reported Issues

- Managing an account was the most frequently reported issue, with **15,109 complaints**.
- Incorrect information on credit reports recorded **4,931 complaints**.
- Problems with purchases appearing on statements accounted for **4,415 complaints**.


### 3. Complaint Trends

- Complaint volumes generally increased between 2017 and 2022.
- 2022 recorded the highest full-year complaint volume, with **12,936 complaints**.
- July 2023 recorded the highest monthly complaint volume, with **1,743 complaints**.

### 4. Company Response Performance

- 65.65% of complaints were closed with an explanation.
- 23.51% were closed with monetary relief.
- 8.43% were closed with non-monetary relief.
- 2.39% remained in progress.

## Business Recommendations

Based on the findings, the following recommendations are proposed:

1. **Improve account management services:** Financial institutions should prioritise checking and savings account processes because they account for the largest share of complaints.

2. **Strengthen transaction monitoring:** Improve monitoring of deposits, withdrawals, debit card transactions and unauthorised account activities.

3. **Improve complaint resolution:** Review recurring customer concerns and develop corrective actions instead of relying solely on explanations.

4. **Monitor complaint trends:** Conduct regular analysis of monthly and annual complaint volumes to identify emerging problems and unusual increases.

5. **Improve response management:** Investigate delayed responses and establish clear response-time targets.

## Project Limitations

- The dataset covers May 2017 to August 2023, making 2023 an incomplete reporting year.
- Complaint volume does not necessarily represent the percentage of dissatisfied customers.
- Timely responses do not automatically indicate successful complaint resolution or customer satisfaction.
- The date fields require validation before forwarding intervals can be treated as actual operational processing times.
- The dataset does not independently establish the causes of increases in complaint volumes.

## Conclusion

The Consumer Complaints Analysis project demonstrates how data analytics can be used to understand customer concerns, evaluate financial product performance and monitor complaint management activities.

The analysis identified checking and savings accounts as the largest source of complaints, while account management emerged as the most frequently reported issue. Although the majority of complaints were marked as receiving timely responses, unresolved complaints and recurring customer concerns highlight opportunities for improvement.

Through Power BI, the project transforms raw complaint records into actionable insights that can support better complaint management, improved financial services and more informed business decisions.

## Skills Demonstrated

- Data Cleaning and Transformation
- Exploratory Data Analysis (EDA)
- Power Query
- Data Modelling
- DAX Measures
- KPI Development
- Time-Series Analysis
- Data Visualisation
- Business Intelligence
- Insight Generation
- Business Recommendations
