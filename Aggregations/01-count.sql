SELECT COUNT(*) FROM bookings;

SELECT COUNT(booking_date) FROM bookings;

SELECT COUNT(amount_tipped) FROM bookings; -- only count not null entries

SELECT COUNT(DISTINCT booking_date) FROM bookings; -- only count distinct not null entries