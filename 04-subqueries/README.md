# SUBQUERIES
A subquery is a query inside another query.

```sql
SELECT *
FROM table
WHERE column IN (SELECT column FROM table);
```
## Subqueries can appear in:

- WHERE
- SELECT
- FROM
- HAVING

## 1️⃣ Subquery with IN 

### Concept
Outer query depends on the result set of inner query.

- IN compares values
- Can be slower for large datasets

## 2️⃣ Subquery with EXISTS

### Concept

- Checks whether rows exist, not actual values.
- Stops as soon as a match is found.
- EXISTS is usually faster than IN
- Best for large tables

## 3️⃣ Correlated Subquery

### Concept

- Inner query runs once per row of outer query.
- Powerful but expensive
- Needs indexing to perform well

## 🧠 Subquery vs JOIN

### Using JOIN (Preferred)
```sql
SELECT DISTINCT u.*
FROM users u
JOIN orders o ON u.id = o.user_id;
```

### Using Subquery
```sql
SELECT *
FROM users
WHERE id IN (SELECT user_id FROM orders);
```
#### JOINs are usually faster and more readable, but subqueries are useful for complex filtering and conditional logic.