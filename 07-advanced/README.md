# Advanced Database Features
VIEWS · STORED PROCEDURES · FUNCTIONS · TRIGGERS
These are used to:
- Encapsulate logic
- Reuse queries
- Enforce business rules
- Improve security

## VIEW
Q: Does a view store data?
A: No (unless materialized view – not in MySQL default).

Q: Why use a view?
A:
- Security
- Simplification
- Reusability

## STORED PROCEDURES
A stored procedure is a precompiled SQL block stored in DB.

Used for:
- Business logic
- Complex operations
- Performance reuse

## FUNCTIONS (User Defined)
Similar to procedure, but:
- Must return a value
- Can be used inside SELECT

## TRIGGERS
A trigger runs automatically when:
- INSERT
- UPDATE
- DELETE

Used for:
- Audit logs
- Validation
- Auto-calculation

This folder covers:
- Views
- Stored Procedures
- Functions
- Triggers

Interview focus:
- Difference between procedure and function
- Trigger execution timing
- When to avoid triggers
