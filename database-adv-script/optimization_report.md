# Task 4: Optimize Complex Queries

## 🎯 Objective

The goal was to analyze and optimize a query that retrieves **all bookings along with user details, property details, and payment details**.

---

## Step 1: Initial Query (Unoptimized)

```sql
SELECT
    b.booking_id,
    b.booking_date,
    b.check_in,
    b.check_out,
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    p.property_id,
    p.name AS property_name,
    p.city,
    p.price_per_night,
    pay.payment_id,
    pay.amount,
    pay.payment_date,
    pay.payment_status
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
JOIN payments pay ON b.booking_id = pay.booking_id;

```
