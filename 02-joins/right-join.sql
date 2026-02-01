-- All orders even if user data is missing
SELECT u.name, o.amount
FROM users u
RIGHT JOIN orders o
ON u.id = o.user_id;
