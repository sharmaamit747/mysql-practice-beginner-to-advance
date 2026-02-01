-- Users with their orders
SELECT u.name, o.amount, o.status
FROM users u
INNER JOIN orders o
ON u.id = o.user_id;

-- Total spending per user
SELECT u.name, SUM(o.amount) AS total_spent
FROM users u
INNER JOIN orders o ON u.id = o.user_id
GROUP BY u.id;


--- Get user name + total orders ---

SELECT u.name, COUNT(o.id) as total_order
FROM users u
JOIN orders o 
ON u.id = o.user_id 
GROUP BY o.user_id;

--- Get users who placed more than 1 order ---

SELECT u.name, COUNT(o.id) as total_order
FROM users u
JOIN orders o 
ON u.id = o.user_id 
GROUP BY o.user_id
HAVING COUNT(o.id) > 1;

--- Get highest spending user with name ---

SELECT 
    u.id,
    u.name,
    SUM(o.amount) AS total_spent
FROM users u
JOIN orders o 
    ON u.id = o.user_id
WHERE o.status = 'paid'
GROUP BY u.id
ORDER BY total_spent DESC
LIMIT 1;
