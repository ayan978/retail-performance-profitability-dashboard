-- Feature Engineering: superstore_data

-- Add shipping duration (in days)
ALTER TABLE superstore_data
ADD COLUMN shipping_days INTEGER;

UPDATE superstore_data
SET shipping_days = "Ship Date" - "Order Date";


-- Add time-based features (year and month)
ALTER TABLE superstore_data
ADD COLUMN order_year INTEGER,
ADD COLUMN order_month INTEGER;

UPDATE superstore_data
SET 
    order_year = EXTRACT(YEAR FROM "Order Date"),
    order_month = EXTRACT(MONTH FROM "Order Date");


-- Add profit margin (rounded to 4 decimal places)
ALTER TABLE superstore_data
ADD COLUMN profit_margin NUMERIC;

UPDATE superstore_data
SET profit_margin = 
    CASE 
        WHEN "Sales" = 0 THEN NULL
        ELSE ROUND("Profit" / "Sales", 4)
    END;