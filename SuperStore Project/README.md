# SuperStore Analytics

## 1. Project Overview

The Superstore Analytics project focuses on analyzing retail sales data using Microsoft Power BI. The objective is to evaluate overall sales performance, profitability, regional performance, customer segments, product categories, and sales trends over time.

The project uses data cleaning, transformation, data modeling, DAX measures, and interactive visualizations to transform raw data into meaningful business insights and recommendations.

## 2. Dataset Description

- **Dataset Name:** Superstore Sales Dataset
- **Data Source:** [Kaggle](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final?resource=download)
- **Data Analysis Tool:** Microsoft Power BI
- **Data Cleaning Tool:** Power Query
- **Calculation Language:** DAX
- **Number of Rows:** 9,994
- **Number of Columns:** 21
- **Data Type:** Retail sales and transaction data

### Data Description

| Column | Description |
|---|---|
| Row ID | Unique record identifier |
| Order ID | Unique order identifier |
| Order Date | Date the order was placed |
| Ship Date | Date the order was shipped |
| Ship Mode | Shipping method |
| Customer ID | Unique customer identifier |
| Customer Name | Customer's name |
| Segment | Customer segment |
| Country | Country associated with the order |
| City | City associated with the order |
| State | State associated with the order |
| Postal Code | Numeric number assigned to individual building |
| Region | Sales region |
| Product ID | Unique product identifier |
| Category | Main product category |
| Sub-Category | Product subcategory |
| Product Name | Name of the product |
| Sales | Revenue generated |
| Quantity | Number of units sold |
| Discount | Discount applied |
| Profit | Profit or loss generated |

## 3. Business Questions

This project answers the following business questions:

1. What is the overall sales performance of the company?
2. Which region generates the highest sales and profit?
3. Which customer segment contributes the most revenue?
4. Which product categories perform best?
5. Which products are the most profitable?
6. What trends can be observed over time?

## 4. Tools and Technologies

- Microsoft Power BI
- Power Query
- DAX (Data Analysis Expressions)
- Data Modeling
- Data Visualization
- Kaggle

## 5. Methodology

The project followed these stages:

1. Data collection from Kaggle.
2. Data exploration and understanding.
3. Data cleaning and preparation using Power Query.
4. Creation of a dedicated date table.
5. Creation of a measures table and DAX calculations.
6. Data modeling and relationship management.
7. Dashboard development and visualization.
8. Business insight generation and recommendations.

## 6. Data Cleaning and Preparation

The following steps were performed during data preparation:

- Checked for duplicate records.
- Checked for missing and blank values.
- Verified column names and data types.
- Corrected date formats.
- Ensured sales, profit, quantity, and discount columns used appropriate data types.
- Reviewed inconsistent and invalid values.
- Examined negative profit values to identify loss-making transactions.
- Loaded the cleaned dataset into Power BI.

## 7. Data Modeling and DAX Measures

### Date Table

A dedicated date table was created to support time-based analysis, including monthly sales trends, yearly comparisons, and date filtering.

### Measures Table

A dedicated measures table was created to organize the DAX calculations used in the dashboard.

## 8. Key Performance Indicators (KPIs)

| KPI | Value |
|---|---:|
| Total Sales | $2.30M |
| Total Profit | $286.40K |
| Total Orders | 5,009 |
| Average Sales | $229.86K |
| Profit Margin | 12% |
| Quantity Sold | 38K |

## 9. Key Findings

### Overall Sales Performance

The business generated approximately $2.30 million in sales and $286.40 thousand in profit from 5,009 orders. The reported profit margin is 12%.

### Regional Performance

The West region generated the highest sales and profit, with $725.46K in sales and $108.42K in profit, followed by the East region, with $678.78K in sales and $91.52K in profit.

### Customer Segment Analysis

The Consumer segment generated the highest revenue of $1.16M, accounting for 50.56% of total revenue. 

### Product Category Performance

Technology is the most profitable category, with a 17% profit margin and $145.45K in profit.

### Product Profitability

The Canon imageCLASS 2200 Advanced Copier is the most profitable product, with a 41% profit margin, $61.60K in sales, and $25.20K in profit. It is followed by the Fellowes PB500 Electric Punch Plastic Comb Binding Machine, with a 28% profit margin, $27.45K in sales, and $7.25K in profit. 

### Sales Trends Over Time

 November recorded the highest sales, generating $352.46K in revenue.

 ## 10. Recommendations

 1. **Improve January sales performance**: Management should introduce targeted promotions, discounts on selected products, and marketing campaigns in January to attract more customers and increase order volume.
 2. **Review Furniture pricing and costs**: Management should investigate the reasons for the low profit margin in the Furniture category and review product pricing, supplier costs, and discount policies to improve profitability.
 3. **Improve Central region profitability**: Management should analyze product-level profit margins, operating costs, and discount rates in the Central region. The focus should be on promoting high-margin products and reducing unnecessary costs rather than simply increasing sales.
 4. **Prioritize high-performing products**: Management should ensure adequate stock of the Canon imageCLASS 2200 Advanced Copier and evaluate opportunities to increase its sales while maintaining its profit margin.
 5. **Increase investment in Technology**: Management should consider expanding its Technology product offerings, improving product availability, and promoting highmargin products to increase profits.
 6. **Plan ahead for November demand**: Management should prepare for the December sales peak by optimizing inventory levels, planning marketing campaigns early, and ensuring that popular products are available to meet customer demand.

## 11. Conclusion

The Superstore Analytics project demonstrates how Power BI can transform retail data into meaningful business insights through data cleaning, data modeling, DAX calculations, and interactive visualizations.

The analysis provides an overview of sales performance, profitability, customer segments, regional contributions, product performance, and sales trends.

The findings can help stakeholders identify opportunities to improve profitability, optimize product and regional performance, and make data-driven business decisions.

This project strengthened my practical skills in Power Query, DAX, data modeling, KPI development, data visualization, and business analytics.
