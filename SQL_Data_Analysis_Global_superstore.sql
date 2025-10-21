-- STEP 1: Select Database
USE superstore_db;

-- STEP 2: Basic Check
SELECT COUNT(*) AS TOTAL_ROWS FROM global_superstore_dataset;
SELECT * FROM global_superstore_dataset LIMIT 20;

-- STEP 3: Overall Business Health
SELECT 
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit,
    ROUND(SUM(Profit)/SUM(Sales)*100,2) AS Profit_Margin_Percent,
    COUNT(DISTINCT Customer_ID) AS Unique_Customers
FROM global_superstore_dataset;

-- STEP 4: Category-wise Sales & Profit
SELECT 
    Product_Category,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM global_superstore_dataset
GROUP BY Product_Category;

-- STEP 5: Discount vs Profit Analysis

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

---Step 5 : Region wise profit

SELECT
	  Region,
      ROUND(SUM(Profit) , 2) AS Total_Profit
      FROM global_superstore_dataset
GROUP BY Region
ORDER BY Total_Profit DESC;