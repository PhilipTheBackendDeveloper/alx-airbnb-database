# Task 0: Complex Joins Queries

This project is part of the **ALX Airbnb Database Module**.  
The task focuses on mastering SQL joins by writing queries that combine multiple tables to extract meaningful insights.

---

## Files

- **joins_queries.sql** → Contains SQL queries using INNER JOIN, LEFT JOIN, and FULL OUTER JOIN.
- **README.md** → Documentation and explanation of the queries.

---

## Queries Explained

### 1. INNER JOIN → Bookings with Users

```sql
SELECT b.id AS booking_id,
       b.booking_date,
       u.id AS user_id,
       u.name AS user_name,
       u.email
FROM bookings b
INNER JOIN users u
    ON b.user_id = u.id;
```

## Task 1: Practice Subqueries

### 1. Non-Correlated Subquery → Properties with Avg Rating > 4.0

```sql
SELECT p.id AS property_id,
       p.name AS property_name,
       (SELECT AVG(r.rating)
        FROM reviews r
        WHERE r.property_id = p.id) AS avg_rating
FROM properties p
WHERE (SELECT AVG(r.rating)
       FROM reviews r
       WHERE r.property_id = p.id) > 4.0
ORDER BY p.id;

SELECT u.id AS user_id,
       u.name AS user_name,
       (SELECT COUNT(*)
        FROM bookings b
        WHERE b.user_id = u.id) AS total_bookings
FROM users u
WHERE (SELECT COUNT(*)
       FROM bookings b
       WHERE b.user_id = u.id) > 3
ORDER BY u.id;
```
