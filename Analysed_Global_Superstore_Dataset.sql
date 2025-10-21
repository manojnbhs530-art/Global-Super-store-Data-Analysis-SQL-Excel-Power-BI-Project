USE superstore_db;

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
