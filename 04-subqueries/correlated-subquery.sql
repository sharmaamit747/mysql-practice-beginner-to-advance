--- Highest order per user ---

SELECT *
FROM orders o1
WHERE amount = (
    SELECT MAX(amount)
    FROM orders o2
    WHERE o2.user_id = o1.user_id
);

--- Users whose order amount is above their own average ---

SELECT *
FROM orders o
WHERE amount > (
    SELECT AVG(amount)
    FROM orders
    WHERE user_id = o.user_id
);

--- Users whose total spending > average spending of all users ---

SELECT 
    u.id,
    u.name,
    SUM(o.amount) AS total_spent
FROM users u
JOIN orders o 
    ON u.id = o.user_id
GROUP BY u.id, u.name
HAVING SUM(o.amount) > (
    SELECT AVG(user_total)
    FROM (
        SELECT SUM(o2.amount) AS user_total
        FROM orders o2
        WHERE o2.status = 'paid'
        GROUP BY o2.user_id
    ) t
);

--- Orders greater than user’s average order ---

SELECT 
    u.id,
    u.name,
    o.amount
FROM users u
JOIN orders o ON u.id = o.user_id
JOIN (
    SELECT 
        user_id,
        AVG(amount) AS avg_amount
    FROM orders
    GROUP BY user_id
) a ON a.user_id = u.id
WHERE o.amount > a.avg_amount;



