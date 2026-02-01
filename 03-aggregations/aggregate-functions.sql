-- Total users
SELECT COUNT(*) AS total_users FROM users;

-- Total orders
SELECT COUNT(*) AS total_orders FROM orders;

-- Total revenue
SELECT SUM(amount) AS total_revenue FROM orders;

-- Average order amount
SELECT AVG(amount) AS avg_order_amount FROM orders;

-- Minimum and maximum order value
SELECT MIN(amount) AS min_order,
       MAX(amount) AS max_order
FROM orders;
