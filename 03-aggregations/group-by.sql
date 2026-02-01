-- Total orders per user
SELECT user_id, COUNT(*) AS total_orders
FROM orders
GROUP BY user_id;

-- Total amount spent by each user
SELECT user_id, SUM(amount) AS total_spent
FROM orders
GROUP BY user_id;

-- Average order amount per user
SELECT user_id, AVG(amount) AS avg_spent
FROM orders
GROUP BY user_id;

-- Orders count by status
SELECT status, COUNT(*) AS order_count
FROM orders
GROUP BY status;
