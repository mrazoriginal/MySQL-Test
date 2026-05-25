USE hotel_db;

-- -------------------------
-- Show all customers
-- -------------------------
SELECT * FROM customers;

-- -------------------------
-- Show all rooms
-- -------------------------
SELECT * FROM rooms;

-- -------------------------
-- Show reservations with customer + room info
-- -------------------------
SELECT 
    r.reservation_id,
    c.full_name,
    rm.room_number,
    rm.room_type,
    r.check_in,
    r.check_out,
    r.status
FROM reservations r
JOIN customers c ON r.customer_id = c.customer_id
JOIN rooms rm ON r.room_id = rm.room_id;

-- -------------------------
-- Show total revenue
-- -------------------------
SELECT SUM(amount) AS total_revenue FROM payments;

-- -------------------------
-- Show available rooms
-- -------------------------
SELECT * FROM rooms WHERE status = 'available';
