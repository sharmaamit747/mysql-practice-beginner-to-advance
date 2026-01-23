-- Users older than 30
SELECT * FROM users WHERE age > 30;

-- Orders with status paid
SELECT * FROM orders WHERE status = 'paid';

-- Orders between amount 1000 and 5000
SELECT * FROM orders
WHERE amount BETWEEN 1000 AND 5000;

-- Users with gmail accounts
SELECT * FROM users
WHERE email LIKE '%gmail.com';