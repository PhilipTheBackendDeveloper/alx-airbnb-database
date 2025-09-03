-- ================================
-- Task 3: Implement Indexes for Optimization
-- File: database_index.sql
-- ================================

-- Index on Users table for frequent lookups by email (e.g., login queries)
CREATE INDEX idx_users_email ON users(email);

-- Index on Bookings table for filtering by user_id (common in WHERE/JOIN)
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index on Bookings table for filtering or ordering by property_id
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index on Bookings table for queries by booking_date (e.g., reports by date range)
CREATE INDEX idx_bookings_date ON bookings(booking_date);

-- Index on Properties table for fast searches by city/location
CREATE INDEX idx_properties_city ON properties(city);

-- Composite index: Properties often searched by city + price range
CREATE INDEX idx_properties_city_price ON properties(city, price_per_night);

-- Optional: Unique index for ensuring no duplicate property names per host
-- (depends on business rules)
-- CREATE UNIQUE INDEX idx_unique_property_host ON properties(host_id, name);
