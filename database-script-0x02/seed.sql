-- Insert sample Users
INSERT INTO Users (user_id, name, email, password, created_at)
VALUES 
(1, 'John Doe', 'john@example.com', 'hashedpassword1', NOW()),
(2, 'Jane Smith', 'jane@example.com', 'hashedpassword2', NOW()),
(3, 'Michael Brown', 'mike@example.com', 'hashedpassword3', NOW());

-- Insert sample Properties
INSERT INTO Properties (property_id, owner_id, title, description, price_per_night, location, created_at)
VALUES
(1, 1, 'Cozy Apartment in Accra', '2 bedroom apartment near the beach', 45.00, 'Accra, Ghana', NOW()),
(2, 2, 'Luxury Villa in Kumasi', 'Spacious villa with pool and garden', 120.00, 'Kumasi, Ghana', NOW());

-- Insert sample Bookings
INSERT INTO Bookings (booking_id, property_id, user_id, start_date, end_date, status, created_at)
VALUES
(1, 1, 2, '2025-09-10', '2025-09-15', 'confirmed', NOW()),
(2, 2, 3, '2025-09-12', '2025-09-18', 'pending', NOW());

-- Insert sample Payments
INSERT INTO Payments (payment_id, booking_id, amount, payment_date, status)
VALUES
(1, 1, 225.00, '2025-09-01', 'completed'),
(2, 2, 600.00, '2025-09-05', 'pending');
