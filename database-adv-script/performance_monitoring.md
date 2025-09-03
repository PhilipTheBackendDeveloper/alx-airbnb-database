# Performance Monitoring and Refinement Report

## Objective

The goal of this task was to continuously monitor and refine database performance by:

1. Running monitoring commands (`EXPLAIN ANALYZE`, `SHOW PROFILE`).
2. Identifying bottlenecks in queries.
3. Implementing schema refinements (indexes, normalization, partitioning).
4. Re-running queries to validate improvements.

---

## Step 1: Monitoring Queries

We selected 3 high-usage queries:

### Query 1: Bookings with User and Property Details

```sql
EXPLAIN ANALYZE
SELECT b.booking_id, b.start_date, b.end_date, u.first_name, u.last_name, p.name
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
WHERE b.start_date >= '2025-01-01'
  AND b.status = 'confirmed';
```
