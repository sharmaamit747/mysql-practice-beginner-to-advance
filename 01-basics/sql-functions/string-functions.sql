-- Convert names to uppercase
SELECT UPPER(name) AS name_upper FROM users;

-- Convert emails to lowercase
SELECT LOWER(email) FROM users;

-- Get length of each email
SELECT email, LENGTH(email) AS email_length FROM users;

-- Combine name and email
SELECT CONCAT(name, ' <', email, '>') AS user_contact
FROM users;

-- Extract domain from email
SELECT email, SUBSTRING(email, LOCATE('@', email) + 1) AS domain
FROM users;

-- Replace gmail with googlemail
SELECT email, REPLACE(email, 'gmail.com', 'googlemail.com')
FROM users;
