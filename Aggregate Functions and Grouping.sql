-- Single SQL Script: Aggregate Functions & Grouping Demo

-- 1. Create the Sales table
CREATE TABLE IF NOT EXISTS Sales (
    id           INTEGER PRIMARY KEY,
    product_name VARCHAR(50),
    category     VARCHAR(30),
    quantity     INTEGER,
    price        DECIMAL(10,2),
    sale_date    DATE
);

-- 2. Insert sample data
INSERT INTO Sales (id, product_name, category, quantity, price, sale_date) VALUES
(1, 'Laptop',     'Electronics', 2, 50000.00, '2025-06-01'),
(2, 'Phone',      'Electronics', 3, 30000.00, '2025-06-02'),
(3, 'Chair',      'Furniture',    4, 1500.00,  '2025-06-02'),
(4, 'Table',      'Furniture',    1, 4000.00,  '2025-06-03'),
(5, 'Headphones', 'Electronics',  5, 2000.00,  '2025-06-03'),
(6, 'Desk Lamp',  'Furniture',    2, 1200.00,  '2025-06-04');

-- 3. Summarize data using aggregate functions and grouping

-- 3.1 Total Sales Value per Category
SELECT
    category,
    SUM(quantity * price) AS total_sales
FROM Sales
GROUP BY category;

-- 3.2 Number of Transactions per Category
SELECT
    category,
    COUNT(*) AS transactions
FROM Sales
GROUP BY category;

-- 3.3 Average Unit Price per Category
SELECT
    category,
    AVG(price) AS avg_price
FROM Sales
GROUP BY category;

-- 3.4 Highest and Lowest Unit Price per Category
SELECT
    category,
    MAX(price) AS max_price,
    MIN(price) AS min_price
FROM Sales
GROUP BY category;

-- 3.5 Categories with Total Sales Above 50,000
SELECT
    category,
    SUM(quantity * price) AS total_sales
FROM Sales
GROUP BY category
HAVING SUM(quantity * price) > 50000;
