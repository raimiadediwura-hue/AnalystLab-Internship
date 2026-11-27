# S&P 500 Stock Performance & Predictive Intelligence Analysis

## Project Overview

This project explores historical S&P 500 stock market data from 2014 to 2017 to understand stock price performance, percentage returns, volatility and trading activity.

Using Python and its data analysis libraries, I performed data cleaning, feature engineering, exploratory data analysis (EDA) and comparative stock analysis. I also developed interactive Plotly dashboards to explore market trends and communicate key findings.

## Research Questions

The analysis investigates the following questions:

1. Which stocks recorded the highest closing prices?
2. Which stocks recorded the highest and lowest percentage returns?
3. Which stocks experienced the greatest price volatility?
4. Which stocks recorded the highest trading volumes?
5. How did selected stocks perform between 2014 and 2017?
6. How did stock prices vary across months and years?
7. Which stocks experienced the largest daily price changes?
8. How does trading activity differ across selected stock symbols?

## Dataset Description

The dataset, *S&P 500 Stock Prices 2014–2017*, contains historical daily stock market records for 505 stock symbols.

- **Total records:** 497,472
- **Columns:** 7
- **Date range:** 2 January 2014 – 29 December 2017

The dataset includes stock symbol, date, opening price, highest price, lowest price, closing price and trading volume.

## Tools and Technologies

- Python
- Pandas and NumPy
- Matplotlib and Seaborn
- Plotly
- Jupyter Notebook

## Data Cleaning and Preparation

The dataset was inspected to understand its structure, data types, missing values and duplicate records.

The preparation process involved:

- Converting the date column to datetime format.
- Checking missing values and duplicate records.
- Sorting records by stock symbol and date.
- Examining zero trading-volume observations.
- Preparing the data for time-based and stock-level analysis.

Missing stock prices were not arbitrarily replaced to avoid introducing inaccurate financial information.

### Feature Engineering

Additional analytical fields were created, including:

- Year, month, month name and quarter.
- Daily price change.
- Daily percentage return.
- Daily trading range (high minus low).
- Moving averages (MA7, MA20 and MA50).

## Exploratory Data Analysis and Dashboard Development

The analysis covered stock price performance, percentage returns, volatility, trading volumes, daily price movements and monthly and yearly trends.

An interactive Plotly dashboard was developed with four sections:

### Page 1: Market Overview

- Total stock symbols and trading records.
- Available date range and average closing price.
- Stock symbol distribution and monthly market trends.

### Page 2: Stock Price Performance

- Closing price trends.
- Opening, highest and lowest price comparisons.
- Daily price movements and moving averages.
- Stock and date filters.
### Page 3: Returns and Volatility Analysis

- Daily and average percentage returns.
- Return distribution.
- Historical and annualised volatility.
- Comparison of selected stocks.

### Page 4: Trading Volume Analysis

- Trading volume trends.
- Average daily trading volume.
- Highest and lowest volume observations.
- Relationship between trading volume and price movements.
- Stock symbol and date filters.

## Key Findings

Five stocks were selected for comparative analysis: Apple (AAPL), Microsoft (MSFT), Amazon (AMZN), Alphabet (GOOGL) and JPMorgan Chase (JPM).

- **Closing prices:** AMZN recorded the highest closing price among the selected stocks at $1,195.83, followed by GOOGL at $1,085.09.
- **Returns:** AMZN recorded the highest average daily return at 0.12%, while GOOGL and JPM recorded 0.07%.
- **Volatility:** AMZN had the highest annualised volatility at 29.60%, while JPM had the lowest at 20.55%.
- **Daily price movements:** GOOGL recorded the highest single-day percentage gain of 16.26%, while AMZN experienced the largest single-day decline of -11.00%.
- **Trading volume:** AAPL recorded the highest average daily trading volume at approximately 45.17 million shares, followed by MSFT at 30.71 million shares. GOOGL recorded the lowest among the five selected stocks at approximately 2.11 million shares.

These findings show that stock performance, risk and trading activity differ across companies. For example, AMZN had the highest average daily return but also the highest volatility, demonstrating the importance of considering risk alongside returns.

## Recommendations

- Evaluate stock performance using percentage returns rather than nominal closing prices alone.
- Consider volatility when comparing potential investment performance and risk.
- Monitor unusual daily price movements and trading volume changes for further investigation.
- Use moving averages to examine historical price trends.
- Consider corporate actions, such as stock splits, when comparing historical prices.
- Extend the analysis with time-series forecasting and machine learning techniques to investigate predictive patterns.

## Conclusion

This project demonstrates how Python can be used to transform historical financial data into meaningful insights through data cleaning, feature engineering, exploratory analysis and interactive visualization.

The analysis revealed differences in the returns, volatility and trading activity of selected S&P 500 stocks. The interactive dashboards provide a structured way to explore historical stock performance and support data-driven market analysis.

## Limitations and Future Improvements

The analysis covers only 2014–2017 and does not account for all factors influencing stock prices, such as company financial performance, dividends, economic indicators and market news. Historical patterns also do not guarantee future performance.

Future improvements could include incorporating additional financial indicators, using adjusted closing prices, developing predictive models and deploying the dashboards as a standalone web application.

## Project Structure

```text
S&P-500-Stock-Performance-Analysis/
│
├── data/
│   └── S&P 500 Stock Prices 2014-2017.csv
│
├── notebooks/
│   └── SP500_Stock_Analysis.ipynb
│
├── dashboards/
│   ├── Market_Overview.png
│   ├── Stock_Price_Performance.png
│   ├── Returns_and_Volatility.png
│   └── Trading_Volume_Analysis.png
│
└── README.md
```
