# Database Normalization
“Normalization is a systematic approach to eliminate redundancy and maintain data integrity by organizing tables into structured forms like 1NF, 2NF, and 3NF. In production systems, we typically design up to 3NF and selectively denormalize based on query performance and indexing strategies.”
Normalization is a database design technique used to organize tables in a way that:
- Reduces data redundancy
- Eliminates data anomalies
- Improves data integrity
- Makes schema scalable & maintainable

It is mainly used in Relational Databases (RDBMS) like:
- MySQL
- PostgreSQL
- Oracle Database

## Why Normalization Is Important?
Without normalization, we face:

### Insertion Anomaly
Cannot insert data without unnecessary dependency.

### Update Anomaly
Need to update same data in multiple rows.

### Deletion Anomaly
Deleting one record accidentally deletes important related data.

## Real-World Example (School System)
Imagine this bad table:
| Student ID | Student Name | Course Name | Teacher Name | Teacher Phone |
|------------|-------------|-------------|--------------|--------------|
| 1          | Amit        | Math        | Sharma       | 9999999999   |
| 2          | Rahul       | Math        | Sharma       | 9999999999   |
| 3          | Priya       | Science     | Verma        | 8888888888   |

### ❌ Problems:
- Teacher phone repeated
- If Sharma’s number changes → update multiple rows
- If all Math students deleted → teacher info lost

## First Normal Form (1NF)

### Rule:
- No repeating groups
- Atomic values only
- Unique rows
- Primary Key required

### ❌ Not 1NF:
| student_id  |	    subjects    |
|-------------|-----------------|
| 1	          |   Math, Science |

### ✅ 1NF:
| student_id  |	  subjects   |
|-------------|--------------|
| 1	          |     Math     |
| 1	          |   Science    |

Each column must hold single value only

## Second Normal Form (2NF)
### Rule:
- Must be in 1NF
- No partial dependency on composite key

### Example:
#### Table:
| student_id | course_id | student_name | course_name |

Primary Key: (student_id, course_id)

#### Problem:
- student_name depends only on student_id
- course_name depends only on course_id

#### ✅ Solution (Split tables)

Students
| student_id | student_name |

Courses
| course_id | course_name |

Enrollments
| student_id | course_id |

Remove partial dependency

## Third Normal Form (3NF)

### Rule:
- Must be in 2NF
- No transitive dependency

### ❌ Example:

| student_id | student_name | department_id | department_name |

#### Here:

department_name depends on department_id

department_id depends on student_id

Transitive dependency exists.

### ✅ Solution:

Students
| student_id | student_name | department_id |

Departments
| department_id | department_name |


## Boyce-Codd Normal Form (BCNF)
Stronger version of 3NF.

### Rule:

- Every determinant must be a candidate key.
- Used in complex relationships.
- Mostly used in enterprise systems.

## Fourth Normal Form (4NF)
Handles multi-valued dependency.

### Example:
If a student has multiple:

- Skills
- Hobbies

Separate tables required.

## Fifth Normal Form (5NF)
Deals with join dependency.
Used in very complex database systems.

Rarely used in normal business applications.
