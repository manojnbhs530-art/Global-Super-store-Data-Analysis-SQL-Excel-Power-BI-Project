# Global-Super-store-Data-Analysis-SQL-Excel-Power-BI-Project
This end-to-end Data Analytics Project analyzes the Global Superstore dataset to uncover insights into sales performance and profitability trends across multiple regions over years

Project Overview

This project focuses on analyzing the Global Superstore dataset to uncover sales performance, profitability patterns, and customer behavior insights.
It demonstrates an end-to-end data analytics process using SQL for analysis, Excel for data cleaning, and Power BI for visualization.
The goal is to transform raw business data into actionable insights that support decision-making and performance improvement.

Objectives

The main objectives of this project are to analyze global sales and profit performance across regions, categories, and segments, identify key business drivers impacting profit margins, examine the relationship between discounts and profitability, and develop an interactive Power BI dashboard for visual storytelling and decision support.

Tools and Technologies Used

SQL (MySQL) was used for data extraction, aggregation, and calculation of KPIs.
Microsoft Excel was used for data cleaning, preprocessing, and validation.
Microsoft Power BI was used for creating interactive dashboards and visual analytics.

Key Analyses and Insights

KPI Analysis was performed to calculate total sales, profit, quantity sold, and discount averages.
Regional Profit Analysis identified the most and least profitable regions.
Product-wise Sales and Profit Analysis highlighted top-performing and underperforming product categories.
Discount vs Profit Analysis revealed that higher discounts negatively impact profit margins.
Customer Segment Analysis showed profit contribution across Consumer, Corporate, and Home Office segments.

SQL Component

The SQL script includes a series of analytical queries that explore sales and profit trends, regional performance, and discount effects.
For example, the following query was used for discount versus profit analysis:

SELECT
CASE
WHEN Discount = 0 THEN '0%'
WHEN Discount > 0 AND Discount <= 0.1 THEN '0-10%'
WHEN Discount > 0.1 AND Discount <= 0.25 THEN '10-25%'
WHEN Discount > 0.25 AND Discount <= 0.5 THEN '25-50%'
ELSE '>50%'
END AS Discount_Range,
ROUND(AVG(Profit), 2) AS Avg_Profit,
ROUND(SUM(Sales), 2) AS Total_Sales,
COUNT(*) AS Num_Orders
FROM global_superstore_dataset
GROUP BY Discount_Range
ORDER BY Discount_Range;

This query identifies how different discount ranges affect profitability and sales volume.

Power BI Dashboard

The Power BI dashboard provides an interactive visualization of regional and category-level sales and profit, discount and profit relationship trends, customer segment performance, and time-based sales and profit patterns.
Users can apply filters and drill down by category, region, or segment to explore specific insights dynamically.

Files Included

Global_Superstore_Dataset.csv (Raw Data)
This is the original dataset containing sales transactions, customer, product, and regional data.
Source: Kaggle – Global Superstore Dataset (https://www.kaggle.com/datasets/vivek468/global-superstore
)

Global_Superstore2_Cleaned_Data.csv.xlsx (Cleaned Data)
This dataset contains the cleaned and preprocessed version of the raw data. Duplicates were removed, missing values were fixed, and formats were standardized.

Analysed_Global_Superstore_Dataset.sql
This file contains all the SQL queries used for KPI extraction, discount-profit analysis, and regional comparisons.

KPI_Global_Superstore_SQL_Analysis.csv
This file contains key performance metrics such as total sales, profit, quantity, and average discount derived from SQL queries.

Productwise_Sales&Profit_Global_Superstore_SQL_Analysis.csv
This dataset contains product-level sales and profit data extracted from SQL outputs, used for identifying top and bottom-performing categories.

Discount_vs_Profit_Analysis.csv
This file presents an analysis showing the relationship between discount percentages and profitability.

Region_wise_Profit_Analysis.csv
This dataset summarizes regional sales and profit, identifying high and low-performing regions.

Global Superstore Sales and Profit Analysis - SQL and Power BI Project.pbix
This Power BI file contains the final interactive dashboard that combines all the insights from SQL and Excel analysis.

Results and Insights

The Consumer Segment contributed the most to overall revenue.
The West and East regions were the most profitable, while certain other regions showed consistent losses.
Technology and Office Supplies categories performed better than Furniture in profit margins.
Discounts above 25 percent led to a noticeable drop in profit, indicating that high discounting strategies reduce profitability.

Outcome

This project demonstrates the complete data analysis workflow — from raw data cleaning and SQL-based querying to visualization in Power BI.
It highlights strong skills in data transformation, business analysis, and data storytelling, which are essential for data analyst and business intelligence roles.

Recommended Folder Structure

Global_Superstore_Sales_and_Profit_Analysis
│
├── README.md
├── Global_Superstore_Dataset.csv
├── Global_Superstore2_Cleaned_Data.csv.xlsx
├── Analysed_Global_Superstore_Dataset.sql
├── KPI_Global_Superstore_SQL_Analysis.csv
├── Productwise_Sales&Profit_Global_Superstore_SQL_Analysis.csv
├── Discount_vs_Profit_Analysis.csv
├── Region_wise_Profit_Analysis.csv
└── Global Superstore Sales and Profit Analysis - SQL and Power BI Project.pbix
