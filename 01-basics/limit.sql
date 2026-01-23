-- Get first 3 users
SELECT * FROM users LIMIT 3;

-- Get top 2 highest orders
SELECT * FROM orders
ORDER BY amount DESC
LIMIT 2;

-- Get latest 5 orders
SELECT * FROM orders
ORDER BY created_at DESC
LIMIT 5;
