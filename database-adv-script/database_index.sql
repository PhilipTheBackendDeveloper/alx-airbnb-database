-- =======================================
-- Task 3: Implement Indexes for Optimization
-- File: database_index.sql
-- =======================================

-- Step 1: Measure performance BEFORE indexes
EXPLAIN ANALYZE
SELECT b.booking_id, b.booking_date, u.first_name, u.last_name, p.name AS property_name
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
WHERE b.booking_date >= '2025-01-01';

-- Step 2: Create indexes on high-usage columns
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_properties_city ON properties(city);
CREATE INDEX idx_payments_booking_id ON payments(booking_id);

-- Step 3: Measure performance AFTER indexes
EXPLAIN ANALYZE
SELECT b.booking_id, b.booking_date, u.first_name, u.last_name, p.name AS property_name
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
WHERE b.booking_date >= '2025-01-01';
