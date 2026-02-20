DELIMITER //

CREATE FUNCTION GetUserTotal(userId INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);

    SELECT SUM(amount)
    INTO total
    FROM orders
    WHERE user_id = userId;

    RETURN IFNULL(total, 0);
END //

DELIMITER ;

-- Use function
SELECT id, name, GetUserTotal(id) AS total_spent
FROM users;

-- Drop function
DROP FUNCTION GetUserTotal;
