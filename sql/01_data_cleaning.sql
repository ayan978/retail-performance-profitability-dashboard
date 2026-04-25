-- Data Cleaning: superstore_data

-- Convert numeric columns
ALTER TABLE superstore_data
ALTER COLUMN "Sales" TYPE NUMERIC USING "Sales"::NUMERIC,
ALTER COLUMN "Profit" TYPE NUMERIC USING "Profit"::NUMERIC,
ALTER COLUMN "Discount" TYPE NUMERIC USING "Discount"::NUMERIC;

-- Convert integer column
ALTER TABLE superstore_data
ALTER COLUMN "Quantity" TYPE INTEGER USING "Quantity"::INTEGER;

-- Convert date columns (DD/MM/YYYY format)
ALTER TABLE superstore_data
ALTER COLUMN "Order Date" TYPE DATE USING TO_DATE("Order Date", 'DD/MM/YYYY'),
ALTER COLUMN "Ship Date" TYPE DATE USING TO_DATE("Ship Date", 'DD/MM/YYYY');

-- Convert boolean column
ALTER TABLE superstore_data
ALTER COLUMN "Returned" TYPE BOOLEAN USING "Returned"::BOOLEAN;

-- Drop unnecessary encoded columns
ALTER TABLE superstore_data
DROP COLUMN "Customer_no",
DROP COLUMN "Segment_no",
DROP COLUMN "State_no",
DROP COLUMN "Region_no",
DROP COLUMN "Category_no",
DROP COLUMN "Sub-Category_no",
DROP COLUMN "Product Name_no";