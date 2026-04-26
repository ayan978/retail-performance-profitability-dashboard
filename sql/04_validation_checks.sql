-- Validation Checks: superstore_data

-- Row count check
SELECT COUNT(*) AS total_rows FROM superstore_data;


-- Null checks for key columns
SELECT 
    COUNT(*) FILTER (WHERE "Sales" IS NULL) AS sales_nulls,
    COUNT(*) FILTER (WHERE "Profit" IS NULL) AS profit_nulls,
    COUNT(*) FILTER (WHERE "Order Date" IS NULL) AS order_date_nulls
FROM superstore_data;


-- Negative sales check (should not exist)
SELECT *
FROM superstore_data
WHERE "Sales" < 0
LIMIT 10;


-- Profit margin consistency check
SELECT *
FROM superstore_data
WHERE profit_margin IS NULL
LIMIT 10;


-- Shipping days sanity check (should not be negative)
SELECT *
FROM superstore_data
WHERE shipping_days < 0
LIMIT 10;