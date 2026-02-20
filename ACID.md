# ACID Properties
ACID ensures reliable transactional behavior in relational databases. Atomicity guarantees all-or-nothing execution, Consistency maintains data validity constraints, Isolation prevents concurrent transaction conflicts, and Durability ensures committed data survives system failures.
ACID is a set of guarantees that make database transactions reliable in systems like:
- MySQL
- PostgreSQL
- Oracle Database
ACID =
A → Atomicity
C → Consistency
I → Isolation
D → Durability
Let’s understand it with a bank transfer example (₹10,000 from Amit → Rahul).

## Real World Scenario: Bank Money Transfer
Amit transfers ₹10,000 to Rahul.

Steps happening internally:
1. Deduct ₹10,000 from Amit
2. Add ₹10,000 to Rahul
3. Commit transaction

If anything fails in between, what should happen?

👉 ACID ensures the system behaves correctly.

## Atomicity (All or Nothing)
A transaction must either complete fully or not happen at all.

### ❌ Problem Without Atomicity
- Money deducted from Amit
- System crashes
- Rahul doesn’t receive money

💥 Bank loses trust.

### With Atomicity
If step 2 fails → step 1 is rolled back.
#### Either:
- Both debit and credit succeed
OR
- Nothing happens

#### Laravel Example
```php
DB::transaction(function() {
    $amit->decrement('balance', 10000);
    $rahul->increment('balance', 10000);
});
```
If any error occurs → automatic rollback.

## Consistency (Valid State Only)
After a transaction, the database must remain valid according to rules.
### Example Rules:
- Balance cannot be negative
- Foreign keys must exist
- Unique emails must stay unique

### Real Example
If Amit has ₹5,000 and tries to transfer ₹10,000:
❌ Transaction must fail
Database must stay consistent

#### Think of it like:
Traffic rules. You cannot jump red light. System enforces rules.

## Isolation (Transactions Don’t See Each Other’s Mess)
Multiple transactions running together must not corrupt each other.

### Real Scenario
Two people try to book the last movie seat at the same time.

#### Without isolation:
- Both get seat.
- Double booking 

#### With isolation:
- One succeeds.
- Other gets error.

### Isolation Levels
| Level              | Prevents              |
|--------------------|-----------------------|
| Read Uncommitted   | Dirty reads           |
| Read Committed     | Dirty reads           |
| Repeatable Read    | Non-repeatable reads  |
| Serializable       | Phantom reads         |

## Durability (Data Survives Crash)
Once transaction is committed, it will remain saved — even if server crashes.

### Real Example
- Money transfer success message shown.
- Immediately power failure.

### After restart:
✔ Transaction still exists.
Because database writes to:
- Disk logs
- Redo logs
- WAL (Write Ahead Log)

## One Simple Analogy (Restaurant Example)

You order food.

Atomicity → Either full order delivered or cancelled
Consistency → Kitchen follows hygiene rules
Isolation → Other orders don’t mix with yours
Durability → Once bill paid, record stored permanently