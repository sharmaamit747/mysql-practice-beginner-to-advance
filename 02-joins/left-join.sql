-- All users, even if they have no orders
SELECT u.name, o.amount
FROM users u
LEFT JOIN orders o
ON u.id = o.user_id;

-- Users with NO orders
SELECT u.name
FROM users u
LEFT JOIN orders o ON u.id = o.user_id
WHERE o.id IS NULL;

--- Get users with no paid orders ---

SELECT 
    u.name,
    COUNT(o.id) AS total_order
FROM users u
LEFT JOIN orders o 
    ON u.id = o.user_id 
    AND o.status = 'paid'
GROUP BY u.id, u.name
HAVING COUNT(o.id) = 0;