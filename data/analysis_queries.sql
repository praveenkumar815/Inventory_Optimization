-- SUPPLY CHAIN ANALYTICS PROJECT
-- Database: supply_chain_db
-- Goal: Identify profitability leaks and operational inefficiencies

-- ---------------------------------------------------------
-- QUERY 1: Identify "Bleeding" Products (Negative Margin)
-- Insight: Finds sub-categories that generate high revenue but lose money.
-- ---------------------------------------------------------
SELECT 
    sub_category, 
    region,
    SUM(sales) AS total_revenue, 
    SUM(profit) AS total_profit, 
    ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS profit_margin_percentage
FROM retail_sales
GROUP BY sub_category, region
ORDER BY total_profit ASC
LIMIT 10;

-- ---------------------------------------------------------
-- QUERY 2: Shipping Mode Efficiency Analysis
-- Insight: Analyzes profit per unit for different shipping methods.
-- ---------------------------------------------------------
SELECT 
    ship_mode, 
    SUM(quantity) AS total_units_shipped,
    SUM(profit) AS total_profit,
    ROUND(SUM(profit) / SUM(quantity), 2) AS profit_per_unit
FROM retail_sales
GROUP BY ship_mode
ORDER BY profit_per_unit DESC;

-- ---------------------------------------------------------
-- QUERY 3: Regional Performance (ABC Analysis)
-- Insight: Calculates revenue share by region to identify top markets.
-- ---------------------------------------------------------
SELECT 
    region, 
    SUM(sales) AS total_sales,
    CONCAT(ROUND(SUM(sales) * 100.0 / (SELECT SUM(sales) FROM retail_sales), 1), '%') AS revenue_share
FROM retail_sales
GROUP BY region
ORDER BY total_sales DESC;