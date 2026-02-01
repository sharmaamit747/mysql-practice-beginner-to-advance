-- Users who have placed at least one order
SELECT *
FROM users
WHERE id IN (
    SELECT DISTINCT user_id
    FROM orders
);

-- Orders placed by users older than 30
SELECT *
FROM orders
WHERE user_id IN (
    SELECT id
    FROM users
    WHERE age > 30
);

--- Users who never placed an order ---

SELECT *
FROM users
WHERE id NOT IN (
    SELECT DISTINCT user_id
    FROM orders
);

--- Users with only paid orders ---

SELECT 
    u.id,
    u.name
FROM users u
JOIN orders o ON u.id = o.user_id
GROUP BY u.id, u.name
HAVING COUNT(*) = SUM(o.status = 'paid');
