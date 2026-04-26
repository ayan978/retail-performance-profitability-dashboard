-- KPI Views: superstore_data

-- Total Sales
CREATE VIEW kpi_total_sales AS
SELECT SUM("Sales") AS total_sales
FROM superstore_data;


-- Total Profit
CREATE VIEW kpi_total_profit AS
SELECT SUM("Profit") AS total_profit
FROM superstore_data;


-- Total Orders
CREATE VIEW kpi_total_orders AS
SELECT COUNT(DISTINCT "Order ID") AS total_orders
FROM superstore_data;


-- Average Profit Margin
CREATE VIEW kpi_avg_profit_margin AS
SELECT AVG(profit_margin) AS avg_profit_margin
FROM superstore_data;


-- Average Shipping Time
CREATE VIEW kpi_avg_shipping_days AS
SELECT AVG(shipping_days) AS avg_shipping_days
FROM superstore_data;


-- Return Rate
CREATE VIEW kpi_return_rate AS
SELECT 
    AVG(CASE WHEN "Returned" = TRUE THEN 1 ELSE 0 END) AS return_rate
FROM superstore_data;