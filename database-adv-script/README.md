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
