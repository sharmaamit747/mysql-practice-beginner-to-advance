-- start transaction
START TRANSACTION;

-- Example update
UPDATE orders
SET status = 'shipped'
WHERE id = 3;

-- Save changes
COMMIT;

-- Or undo changes
ROLLBACK;

--SAVEPOINT (Advanced)
START TRANSACTION;

UPDATE orders SET status = 'paid' WHERE id = 1;
SAVEPOINT step1;

UPDATE orders SET status = 'cancelled' WHERE id = 2;

ROLLBACK TO step1;

COMMIT;