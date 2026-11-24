SELECT booking_date, SUM(amount_billed)
FROM bookings
GROUP BY booking_date;


SELECT MIN(total_amount) 
FROM (
    SELECT booking_date, SUM(amount_billed) AS total_amount
    FROM bookings
    GROUP BY booking_date
) AS daily_table;


SELECT booking_date
FROM bookings
GROUP BY booking_date
HAVING SUM(amount_billed) = (
    SELECT MIN(total_amount) 
    FROM (
        SELECT booking_date, SUM(amount_billed) AS total_amount
        FROM bookings
        GROUP BY booking_date
    ) AS daily_table
);


