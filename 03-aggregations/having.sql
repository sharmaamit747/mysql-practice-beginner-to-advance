-- Users who spent more than 5000
SELECT user_id, SUM(amount) AS total_spent
FROM orders
GROUP BY user_id
HAVING total_spent > 5000;

-- Order statuses having more than 1 order
SELECT status, COUNT(*) AS total
FROM orders
GROUP BY status
HAVING total > 1;

-- Paid users with average order > 2000
SELECT user_id, AVG(amount) AS avg_amount
FROM orders
WHERE status = 'paid'
GROUP BY user_id
HAVING avg_amount > 2000;
