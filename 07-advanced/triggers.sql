-- Create audit table
CREATE TABLE order_logs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    action VARCHAR(50),
    log_time DATETIME
);

DELIMITER //

CREATE TRIGGER after_order_insert
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    INSERT INTO order_logs(order_id, action, log_time)
    VALUES (NEW.id, 'ORDER CREATED', NOW());
END //

DELIMITER ;

