-- Total number of orders
SELECT COUNT(*) AS total_orders FROM orders;

-- Total revenue
SELECT SUM(amount) AS total_revenue FROM orders;

-- Average order amount
SELECT AVG(amount) AS avg_order_amount FROM orders;

-- Highest order value
SELECT MAX(amount) AS max_order FROM orders;

-- Round average amount to 2 decimals
SELECT ROUND(AVG(amount), 2) FROM orders;

-- Ceiling and floor example
SELECT amount, CEIL(amount), FLOOR(amount)
FROM orders;
