-- SQL Queries for Berlin Sales Analysis

-- 1. Total Spending Per Customer
SELECT 
    Customer_ID, 
    SUM(Total_Sales) AS Total_Spending
FROM 
    Berlin_Sales
GROUP BY 
    Customer_ID
ORDER BY 
    Total_Spending DESC;

-- 2. Purchase Frequency Per Customer
SELECT 
    Customer_ID, 
    COUNT(*) AS Purchase_Frequency
FROM 
    Berlin_Sales
GROUP BY 
    Customer_ID
ORDER BY 
    Purchase_Frequency DESC;

-- 3. Top Products by Total Sales
SELECT 
    Product_Category, 
    SUM(Total_Sales) AS Total_Sales
FROM 
    Berlin_Sales
GROUP BY 
    Product_Category
ORDER BY 
    Total_Sales DESC;

-- 4. Monthly Sales Trends
SELECT 
    DATE_TRUNC('month', Date) AS Month, 
    SUM(Total_Sales) AS Monthly_Sales
FROM 
    Berlin_Sales
GROUP BY 
    Month
ORDER BY 
    Month;
