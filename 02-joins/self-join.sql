-- User and their referrer
SELECT u.name AS user_name,
       r.name AS referrer_name
FROM users u
LEFT JOIN users r
ON u.id = r.id;

(If referrer_id existed:)

SELECT u.name AS user_name,
       r.name AS referrer_name
FROM users u
LEFT JOIN users r
ON u.referrer_id = r.id;
