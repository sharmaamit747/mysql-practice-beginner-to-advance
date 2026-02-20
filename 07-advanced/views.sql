-- CRATE VIEW for user total spending
CREATE VIEW user_total_spending AS
SELECT u.id, u.name, SUM(o.amount) AS total_spent
FROM users u 
JOIN orders o ON u.id = o.user_id
GROUP BY u.id;

-- USE VIEW
SELECT * FROM user_total_spending;

-- DROP VIEW
DROP VIEW user_total_spending;

