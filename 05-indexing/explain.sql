--- see excute plan for details
EXPLAIN SELECT * FROM orders WHERE user_id = 3;

-- With condition on indexed column
EXPLAIN SELECT * FROM orders WHERE status = 'paid';