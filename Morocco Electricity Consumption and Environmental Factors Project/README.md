# Morocco Electricity Consumption Analysis

### Exploratory Data Analysis and Interactive Visualisation Using Python

## Project Overview

Electricity consumption varies across different periods and geographical areas. Understanding these variations helps energy management organisations improve demand forecasting, electricity distribution, and resource planning.

This project analyses electricity consumption across three zones in Morocco, using historical consumption records and environmental data. It explores hourly, weekly, and monthly consumption patterns and investigates the relationship between electricity demand and environmental factors such as temperature, humidity, and wind speed.

The project applies Exploratory Data Analysis (EDA), statistical analysis, and interactive visualisation to identify meaningful patterns and generate insights that can support energy management decisions.

## Project Objectives

- Examine overall electricity consumption across the three zones.
- Compare average consumption across Zone 1, Zone 2, and Zone 3.
- Identify peak and lowest consumption periods.
- Analyse hourly, weekly, and monthly consumption patterns.
- Investigate the relationship between electricity consumption and environmental factors.
- Develop interactive visualisations for exploring consumption trends.
- Identify business insights and provide actionable recommendations.

## Tools and Technologies

| Tool | Purpose |
|---|---|
| Python | Data analysis |
| Jupyter Notebook | Development environment |
| Pandas | Data cleaning and manipulation |
| NumPy | Numerical computations |
| Matplotlib | Data visualisation |
| Seaborn | Statistical visualisation and regression analysis |
| Plotly | Interactive visualisation |

## Dataset Description

The dataset contains **52,416 records and 9 columns**, covering electricity consumption across three zones in Morocco and associated environmental measurements.

| Column | Description |
|---|---|
| Datetime | Date and time of observation |
| Temperature | Recorded temperature |
| Humidity | Recorded humidity |
| WindSpeed | Recorded wind speed |
| GeneralDiffuseFlows | General diffuse flow measurements |
| DiffuseFlows | Diffuse flow measurements |
| PowerConsumption_Zone1 | Electricity consumption in Zone 1 |
| PowerConsumption_Zone2 | Electricity consumption in Zone 2 |
| PowerConsumption_Zone3 | Electricity consumption in Zone 3 |

**Recording frequency:** 10-minute intervals.

## Data Cleaning and Preparation

The following steps were performed to prepare the dataset for analysis:

- Inspected dataset dimensions, column names, and data types.
- Checked for missing values and duplicate records.
- Converted the `Datetime` column to Datetime format.
- Sorted records chronologically.
- Checked consistency of the 10-minute recording intervals.
- Examined descriptive statistics.
- Investigated potential outliers using the Interquartile Range (IQR) method.
- Extracted additional time-based features.

### Feature Engineering

The following columns were extracted from the datetime column:

- Year
- Month
- Day
- Hour
- Day of the week
- Date

### Outlier Analysis

The IQR method identified the following potential outliers:

| Zone | Number of Outliers | Percentage |
|---|---:|---:|
| Zone 1 | 0 | 0% |
| Zone 2 | 7 | 0.01% |
| Zone 3 | 1,191 | 2.27% |

The identified observations were retained for further investigation rather than automatically removed, as they may represent genuine variations in electricity demand.

## Exploratory Data Analysis

The analysis focused on understanding consumption patterns across the three zones and identifying changes in electricity demand over time.

### 1. Average Consumption by Zone

| Zone | Average Consumption |
|---|---:|
| Zone 1 | 32,344.97 |
| Zone 2 | 21,042.51 |
| Zone 3 | 17,835.41 |

**Insight:** Zone 1 recorded the highest average electricity consumption, followed by Zone 2 and Zone 3. This makes Zone 1 the largest consumer among the three zones.

### 2. Combined Electricity Consumption

| Measurement | Date and Time | Total Consumption |
|---|---|---:|
| Highest | 24 July 2017, 20:10 | 134,208.15 |
| Lowest | 3 December 2017, 07:20 | 36,785.04 |

**Insight:** The highest combined consumption occurred during the evening, while the lowest occurred in the morning, highlighting significant variations in demand throughout the day.

### 3. Hourly Consumption Patterns

| Zone | Peak Hour | Lowest Hour |
|---|---:|---:|
| Zone 1 | 20:00 | 06:00 |
| Zone 2 | 20:00 | 06:00 |
| Zone 3 | 20:00 | 07:00 |

**Insight:** All three zones recorded their highest average hourly consumption at 20:00. Consumption generally declined during the early morning, increased towards midday, and rose again during the evening.

### 4. Weekly Consumption Patterns

- Zone 1 recorded its highest average consumption on Wednesday and its lowest on Sunday.
- Zone 2 recorded its highest average consumption on Thursday and its lowest on Sunday.
- Zone 3 recorded its highest average consumption on Saturday and its lowest on Friday.

**Insight:** Zone 1 and Zone 2 experienced lower consumption on Sundays, while Zone 3 followed a slightly different weekly pattern. This suggests that electricity demand varies across zones depending on the day of the week.

### 5. Monthly Consumption Patterns

| Zone | Highest Consumption Month | Average | Lowest Consumption Month | Average |
|---|---|---:|---|---:|
| Zone 1 | August | 36,435.19 | November | 29,002.11 |
| Zone 2 | August | 24,656.22 | April | 17,633.97 |
| Zone 3 | July | 28,194.11 | December | 11,044.81 |

**Insight:** July and August recorded relatively high consumption across the three zones. Zone 3 experienced a particularly noticeable increase in July, suggesting possible seasonal variations in electricity demand.

## Environmental Relationship Analysis

Pearson correlation was used to investigate the relationship between electricity consumption and environmental factors.

### 1. Correlation with Combined Consumption

| Environmental Factor | Correlation | Relationship |
|---|---:|---|
| Temperature | 0.488 | Moderate positive |
| Humidity | -0.299 | Weak negative |
| Wind Speed | 0.222 | Weak positive |

**Key insights:**

- Temperature recorded the strongest positive correlation with combined electricity consumption.
- Humidity showed a negative relationship with electricity consumption.
- Wind speed had a weaker positive relationship with consumption.

### 2. Environmental Correlation by Zone

| Environmental Factor | Zone 1 | Zone 2 | Zone 3 |
|---|---:|---:|---:|
| Temperature | 0.440 | 0.382 | 0.490 |
| Humidity | -0.287 | -0.295 | -0.233 |
| Wind Speed | 0.167 | 0.146 | 0.279 |

**Insight:** Temperature showed a positive relationship with electricity consumption across all three zones, with Zone 3 recording the strongest correlation. Humidity had a negative relationship, while wind speed showed a weak positive relationship.

Correlation does not establish causation. Other factors, including population, industrial activity, and consumer behaviour, may also influence electricity demand.

## Key Findings

The analysis identified seven important findings:

1. **Zone 1 has the highest average consumption:** Its average consumption of 32,344.97 is considerably higher than that of the other zones.
2. **Evening demand is highest:** All three zones recorded their highest average hourly consumption at 20:00.
3. **Early morning demand is lower:** Consumption generally declines during the early morning hours.
4. **Weekly consumption differs across zones:** Zone 1 and Zone 2 have their lowest average consumption on Sundays, while Zone 3 follows a different pattern.
5. **Seasonal variations are noticeable:** July and August recorded relatively high consumption across the zones.
6. **Temperature has the strongest environmental relationship:** It recorded a positive correlation of 0.488 with combined consumption.
7. **Zone 3 requires further investigation:** It recorded more potential outliers and distinct monthly consumption patterns.

## Business Recommendations

Based on the findings, the following actions are recommended for an energy management organisation:

### 1. Improve Peak-Demand Management
Monitor electricity demand closely during evening peak hours, particularly around 20:00. Encourage consumers to shift non-essential electricity usage to off-peak periods.

### 2. Introduce Weather-Based Demand Forecasting
Incorporate temperature and weather forecasts into demand prediction models to anticipate possible increases in electricity consumption.

### 3. Adopt Zone-Specific Energy Management
Develop separate demand profiles for each zone and allocate resources according to their individual consumption patterns.

### 4. Strengthen Seasonal Planning
Prepare for increased demand during July and August through capacity assessments, preventive maintenance, and effective supply planning.

### 5. Investigate Unusual Consumption Patterns
Examine the potential outliers identified in Zone 3 to determine whether they represent genuine demand changes or possible data quality issues.

## Conclusion

This project demonstrates how exploratory data analysis and interactive visualisation can be used to understand electricity consumption patterns across different geographical zones.

The analysis identified Zone 1 as the highest-consuming zone, evening hours as the peak demand period, and temperature as the environmental factor with the strongest positive correlation with electricity consumption.

The findings provide useful insights for electricity demand monitoring, forecasting, seasonal planning, and zone-specific energy management.
