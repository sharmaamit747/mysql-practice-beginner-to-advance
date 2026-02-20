# Indexes & Performance
(EXPLAIN · Single Index · Composite Index · Optimization)
An index is a data structure that improves the speed of data retrieval.
Think of it like:
Book index → find page quickly without scanning entire book

### Without Index
```sql
SELECT * FROM orders WHERE user_id = 5;
```
MySQL scans entire table (Full Table Scan).

### With Index
```sql
CREATE INDEX idx_user_id ON orders(user_id);
```
With Index

This folder covers:
- Creating indexes
- Using EXPLAIN
- Composite indexes
- Performance optimization

Key focus:
- Leftmost prefix rule
- When indexes fail
- EXPLAIN analysis
