# ShopSmart Retail Ltd Analysis

## 1. Project Overview

ShopSmart Analysis is a retail data analysis project focused on evaluating sales performance, customer purchasing behaviour, product performance, store performance, product returns, and inventory management.

The project involved analysing nine related tables containing information about customers, products, orders, stores, returns, employees, suppliers, inventory, and order items.

The objective was to understand the dataset, clean and transform the data, perform calculations using Excel formulas, retrieve related information using lookup functions, summarize business performance using PivotTables, create visualizations, and develop an interactive dashboard to support data-driven decision-making.

## 2. Tools Used

- Microsoft Excel
- Power Query

## 3. Methodology

The project was completed in nine parts:
1. Data Understanding
2. Data Cleaning and Transformation
3. Excel Formulas
4. Lookup Functions
5. PivotTables
6. Data Visualization
7. Dashboard Development
8. Business Questions
9. Business Recommendations

## 4. Part 1: Data Understanding

The dataset consisted of nine tables within one dataset.

### Table Descriptions
| Table | Description |
|---|---|
| Customers | Contains customer_id, Full_name, demographics, contact details, registration dates, and customer segments. |
| Products | Contains product names, categories, brands, cost prices, and selling prices. |
| Orders | Contains order transactions, customer IDs, product IDs, store IDs, dates, quantities, prices, and discounts. |
| Stores | Contains store names, locations, regions, states, cities, and opening dates. |
| Returns | Contains return dates, return reasons, refund amounts, and return rates. |
| Employees | Contains employee details, roles, store assignments, hire dates, and monthly salaries. |
| Suppliers | Contains supplier names, contact information, and locations. |
| Inventory | Contains product and store IDs, stock-on-hand quantities, reorder levels, and restocking dates. |
| Order_Items | Contains product quantities, discounts, unit prices, and order line totals. |

### Primary Keys

I identified the following likely primary keys:

- Customers: `customer_id`
- Products: `product_id`
- Orders: `order_id`
- Stores: `store_id`
- Returns: `return_id`
- Employees: `employee_id`
- Suppliers: `supplier_id`
- Inventory: `inventory_id`
- Order_Items: `order_item_id`

### Possible Foreign Keys

- Orders: `customer_id`, `product_id`, `store_id`
- Returns: `order_id`
- Employees: `store_id`
- Inventory: `product_id`, `store_id`
- Order_Items: `product_id`

I examined the possible relationships between the tables to understand how customer, product, order, store, and inventory data could be connected for analysis.

The primary and foreign keys were identified based on the available column names. Their uniqueness and validity should be verified against the source data before finalizing the data model.

## 5. Part 2: Data Cleaning and Transformation

I used Microsoft Excel and Power Query to prepare the dataset for analysis.

The following activities were performed:

- Removed duplicate rows where identified.
- Checked for missing values across the tables.
- Corrected inconsistent date formats.
- Ensured currency fields were stored as numeric values.
- Converted datasets into Excel Tables.
- Renamed worksheets appropriately to improve workbook organization and navigation.

These steps helped improve data consistency and prepare the workbook for calculations, PivotTables, and dashboard development.

## 6. Part 3: Excel Formulas

I used Excel formulas to calculate key business metrics and understand the overall performance of ShopSmart.

### Key Performance Metrics

| Metric | Result |
|---|---:|
| Total Revenue | ₦6.28 billion |
| Total Quantity Sold | 149,923 units |
| Average Selling Price | ₦36,244.31 |
| Average Order Value | ₦136,385.45 |
| Highest Sales Amount | ₦499,660.00 |
| Lowest Sales Amount | ₦874.65 |
| Number of Orders | 50,000 |
| Number of Customers | 5,000 |
| Number of Products | 500 |
| Number of Stores | 25 |

## 7. Part 4: Lookup Functions

I used the VLOOKUP function to retrieve related information from different tables.

The fields included:

- Customer Name
- Store Name
- Product Name
- Category
- Brand
- Selling Price
- Supplier Name

This helped enrich the records with descriptive information and made the data easier to interpret during analysis.

## 8. Part 5: PivotTables

I created PivotTables to summarize business performance across different dimensions.

The analysis included:

- Sales by Month
- Sales by Store
- Sales by Category
- Sales by Brand
- Sales by State
- Sales by Customer Gender
- Sales by Membership Level
- Top 10 Products
- Bottom 10 Products
- Top 10 Customers

I used the `customer_segment` field as a proxy for membership level because a separate membership-level field was not listed in the available tables.

The PivotTables helped identify sales patterns, compare performance, and highlight high- and low-performing products, customers, stores, and categories.

## 9. Part 6: Charts

I created charts to communicate the findings visually.

| Analysis | Chart Type |
|---|---|
| Monthly Sales Trend | Line Chart |
| Revenue by Category | Clustered Column Chart |
| Revenue by Store | Clustered Bar Chart |
| Top Products | Clustered Bar Chart |
| Sales by Region | Pie Chart |
| Return Rate by Category | Clustered Bar Chart |

These visualizations made it easier to compare sales performance across months, categories, stores, regions, and products.

## 10. Part 7: Dashboard Development

I developed an interactive Excel dashboard to present key performance indicators and major business findings in one place.

### Key Performance Indicators (KPIs)

The dashboard included:

- Total Revenue
- Total Orders
- Total Customers
- Average Order Value
- Return Rate
- Inventory KPI

The reported return rate was 5%, while the inventory KPI displayed 500 in the Excel workbook.

The inventory figure should be interpreted according to the underlying calculation and unit. Stock quantity alone does not represent monetary inventory value.

### Dashboard Charts and Findings

#### Monthly Sales Trend

December recorded the highest monthly sales, while February recorded the lowest.

This highlights variations in monthly sales performance and provides an opportunity to investigate seasonal demand, customer purchasing behaviour, and promotional activities.

#### Revenue by Category

- Beauty generated approximately ₦1.59 billion, making it the highest-revenue category.
- Groceries followed with approximately ₦1.42 billion.
- Home recorded approximately ₦1.16 billion, the lowest among the three categories highlighted.

Beauty and Groceries were the strongest revenue-generating categories in the analysis.

#### Revenue by Store

- ShopSmart Lagos and ShopSmart Ibadan recorded the highest sales, at approximately ₦1.11 billion each.
- ShopSmart Kano recorded the lowest sales, at approximately ₦265.08 million.

These differences suggest an opportunity to investigate variations in customer demand, product availability, and local marketing effectiveness across stores.

#### Top Products

The reported product results were:

- Home item 400: approximately ₦19.76 million.
- Groceries item 115: approximately ₦19.18 million.
- Groceries item 329: approximately ₦17.42 million, among the lowest-performing products highlighted.

Home item 400 was also identified as the highest-revenue product in the business questions.

#### Sales by State

- Lagos: approximately ₦1.11 billion.
- Oyo: approximately ₦1.11 billion.
- Abuja: approximately ₦1.10 billion.
- Kano: approximately ₦265.08 million.

Lagos, Oyo, and Abuja recorded the strongest sales among the locations highlighted, while Kano recorded the lowest.

### Dashboard Slicers

I added slicers to make the dashboard interactive and allow users to filter results by:

- Month
- Region
- Store
- Category
- Membership Level

These slicers allow users to explore specific periods, locations, product categories, and customer segments.

## 11. Part 8: Business Questions and Answers

The analysis addressed several business questions using Excel formulas, VLOOKUP, PivotTables, and dashboard visualizations.

| No. | Business Question | Finding |
|---:|---|---|
| 1 | Which product generated the highest revenue? | Home item 400, approximately ₦19.76 million. |
| 2 | Which store performed best? | ShopSmart Lagos and ShopSmart Ibadan, approximately ₦1.11 billion each. |
| 3 | Which category sells the most? | Beauty, approximately ₦1.59 billion. |
| 4 | Which month generated the highest revenue? | December. |
| 5 | Which customers spend the most? | Joseph Smith was identified as the leading customer in the analysis. |
| 6 | Which stores have low inventory? | ShopSmart Enugu recorded the lowest reported inventory figure of 13. |
| 7 | Which region performs best? | South, with approximately ₦2.18 billion, representing 32% of revenue. |
| 9 | Which product category should management invest in? | Beauty and Groceries, based on their reported revenue and units sold. |

### Category Investment Opportunity

| Category | Revenue | Units Sold |
|---|---:|---:|
| Beauty | ₦1.59 billion | 11,809 |
| Groceries | ₦1.42 billion | 10,352 |

Beauty and Groceries are potential investment priorities because they generated the highest revenue among the categories highlighted.

Management should also consider profit margins, operating costs, customer demand, stock availability, and return rates before making final investment decisions.

## 12. Assumptions

The following assumptions were made during data preparation and analysis.

### Discount Format

I assumed that the discount columns in the Orders and Order_Items tables represent percentage discounts. Based on this assumption, I changed their data types to Percentage in Power Query.

The original values should be checked to confirm that they are correctly scaled and that the percentage formatting reflects the intended discount rates.

### Inventory KPI

I used the `stock_on_hand` field in the inventory analysis and reported an inventory KPI of 500 from the Excel workbook.

However, stock quantity alone does not represent monetary inventory value. A monetary inventory valuation would require multiplying stock-on-hand quantities by the appropriate product cost prices and aggregating the results across inventory records.

### Membership Level

I used the `customer_segment` field as a proxy for membership level because a separate membership-level field was not listed in the dataset.

### Table Relationships

I identified primary keys and possible foreign keys based on the available column names. Their uniqueness and validity should be verified against the actual data before finalizing the relational model.

## 13. Part 9: Key Findings

Three key findings emerged from the analysis.

### Finding 1: Beauty and Groceries Lead in Revenue

Beauty generated approximately ₦1.59 billion, followed by Groceries at ₦1.42 billion. These categories are important revenue drivers and potential areas for further investment.

### Finding 2: Store and Regional Performance Varies

ShopSmart Lagos and ShopSmart Ibadan recorded the highest reported store revenue, while ShopSmart Kano recorded the lowest. The South region generated approximately ₦2.18 billion, representing 32% of total revenue.

These differences suggest that store location, local demand, product availability, and marketing activities should be considered in business planning.

### Finding 3: Sales Trends and Inventory Require Monitoring

December recorded the highest monthly sales, while February recorded the lowest. This highlights the importance of understanding seasonal demand.

ShopSmart Enugu recorded the lowest reported inventory figure, at 13, indicating a need to review stock availability and replenishment requirements.

## 14. Business Recommendations

Based on the findings, I recommend the following actions.

### Recommendation 1: Invest Strategically in High-Performing Categories

Management should investigate opportunities to expand Beauty and Groceries through suitable product assortment, targeted promotions, and inventory allocation.

Investment decisions should also consider profit margins, operating costs, and product return rates rather than revenue alone.

### Recommendation 2: Improve Underperforming Store Performance

Management should investigate the factors contributing to ShopSmart Kano's lower revenue. This could include reviewing local demand, product availability, pricing, customer activity, and marketing effectiveness.

Successful strategies from stronger-performing stores may provide useful insights, but they should be adapted to local market conditions.

### Recommendation 3: Strengthen Inventory and Seasonal Sales Planning

Management should monitor stock levels and reorder points, particularly at stores with low inventory. Sales trends should also be used to prepare for periods of higher demand, including December.

This could help reduce stockouts, improve product availability, and support more effective purchasing decisions.

## 15. Risk Identified

**Inventory-related risk:** Insufficient stock at some locations could lead to lost sales, dissatisfied customers, and missed revenue opportunities.

ShopSmart Enugu's reported inventory figure of 13 should be investigated to confirm its unit of measurement and determine whether replenishment is required.

## 16. Opportunity Identified

**Growth opportunity in high-performing categories:** Beauty and Groceries generated approximately ₦3.01 billion in combined revenue.

Management could explore expanding these categories through demand-based inventory planning, targeted promotions, and improved product availability while monitoring profitability and customer returns.

December's high sales also present an opportunity to plan seasonal promotions and inventory allocation ahead of periods of increased demand.
## 17. Conclusion

This project provided practical experience in using Microsoft Excel and Power Query to clean, organize, analyse, and visualize retail business data.

Working with nine related tables enabled me to explore data relationships, apply Excel formulas and VLOOKUP, create PivotTables, develop charts, and build an interactive dashboard with slicers.

The analysis identified key revenue-generating categories, differences in store and regional performance, monthly sales patterns, and potential inventory management opportunities.

Overall, the project demonstrates how spreadsheet-based analysis can transform raw retail data into meaningful business insights that support informed decision-making.

## Skills Demonstrated

- Data Understanding and Preparation
- Data Cleaning and Transformation
- Microsoft Excel
- Power Query
- Excel Formulas
- VLOOKUP
- Primary and Foreign Key Identification
- Data Relationships
- PivotTables
- Data Visualization
- Interactive Dashboard Development
- Business Questions and KPI Analysis
- Business Recommendations
- Analytical Thinking and Reporting
