# JOINS 

(INNER · LEFT · RIGHT · SELF)
A JOIN combines rows from two tables based on a related column.

```text
users.id  ↔  orders.user_id
```

## 1️⃣ INNER JOIN (MOST USED)

### Concept
- Returns only matching rows from both tables.

### Syntax
```sql
SELECT columns
FROM table1
INNER JOIN table2
ON condition;
```

## 2️⃣ LEFT JOIN (VERY IMPORTANT)

### Concept

- Returns all rows from LEFT table
- matching rows from RIGHT table
- NULL if no match

## 3️⃣ RIGHT JOIN (Less Used, Still Asked)

### Concept

- Returns all rows from RIGHT table

## 4️⃣ SELF JOIN (ADVANCED INTERVIEW TOPIC)

### Concept
- A table joined with itself

### Used when:

- Hierarchy
- Parent-child
- Comparison inside same table

### Example Scenario

Users referring other users (referral system)

Add this column (conceptually):

```text
users.referrer_id → users.id
```