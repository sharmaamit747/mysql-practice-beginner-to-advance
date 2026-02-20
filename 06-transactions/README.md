# Transactions & ACID
(Commit · Rollback · Isolation Levels · Real-world consistency)
A transaction is a sequence of SQL operations that must execute as a single logical unit of work.
Either:
✅ Everything succeeds → COMMIT
❌ Something fails → ROLLBACK

## Real-World Example: Bank Transfer
Transfer ₹1000 from User A → User B
```sql
START TRANSACTION;

UPDATE users SET balance = balance - 1000 WHERE id = 1;
UPDATE users SET balance = balance + 1000 WHERE id = 2;

COMMIT;
```
If second update fails:
```sql
ROLLBACK;
```
Money stays consistent.

This folder covers:
- Transactions
- ACID properties
- Isolation levels
- Row locking

Interview focus:
- Bank transfer example
- Dirty reads
- Isolation differences
