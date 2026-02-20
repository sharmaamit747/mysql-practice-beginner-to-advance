DELIMITER //
CREATE PROCEDURE GetUserOrders(IN userId INT)
BEGIN
    SELECT o.id, o.amount, o.created_at
    FROM orders o
    WHERE o.user_id = userId;
END //
DELIMITER ;

-- Call procedure
CALL GetUserOrders(1);

-- Drop procedure
DROP PROCEDURE GetUserOrders;