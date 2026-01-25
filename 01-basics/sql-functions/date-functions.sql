-- Current date and time
SELECT NOW();

-- Orders created in 2024
SELECT * FROM orders
WHERE YEAR(created_at) = 2024;

-- Orders created in April
SELECT * FROM orders
WHERE MONTH(created_at) = 4;

-- Days since order was created
SELECT id, DATEDIFF(NOW(), created_at) AS days_old
FROM orders;

-- Format order date
SELECT id,
DATE_FORMAT(created_at, '%d-%m-%Y') AS order_date
FROM orders;
