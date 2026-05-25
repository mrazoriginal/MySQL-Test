USE hotel_db;

-- -------------------------
-- Customers
-- -------------------------
INSERT INTO customers (full_name, phone, email) VALUES
('John Smith', '123456789', 'john@example.com'),
('Emily Johnson', '987654321', 'emily@example.com'),
('Michael Brown', '555123456', 'michael@example.com'),
('Sarah Davis', '444987654', 'sarah@example.com');

-- -------------------------
-- Rooms
-- -------------------------
INSERT INTO rooms (room_number, room_type, price_per_night, status) VALUES
('101', 'Single', 80.00, 'available'),
('102', 'Single', 85.00, 'available'),
('201', 'Double', 120.00, 'available'),
('202', 'Double', 130.00, 'available'),
('301', 'Suite', 250.00, 'available');

-- -------------------------
-- Reservations
-- -------------------------
INSERT INTO reservations (customer_id, room_id, check_in, check_out, status) VALUES
(1, 1, '2026-06-01', '2026-06-05', 'booked'),
(2, 3, '2026-06-10', '2026-06-12', 'booked'),
(3, 5, '2026-06-15', '2026-06-20', 'booked');

-- -------------------------
-- Payments
-- -------------------------
INSERT INTO payments (reservation_id, amount, payment_method) VALUES
(1, 320.00, 'Credit Card'),
(2, 240.00, 'Cash'),
(3, 1250.00, 'Credit Card');
