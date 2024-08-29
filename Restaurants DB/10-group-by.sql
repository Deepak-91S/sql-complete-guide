-- SELECT booking_date, SUM(num_guests) FROM bookings
--     GROUP BY booking_date;


-- SELECT pm.name, b.booking_date, SUM(b.num_guests), ROUND(AVG(amount_tipped),2) FROM payment_methods AS pm
--     INNER JOIN bookings AS b ON b.payment_id = pm.id
--     GROUP BY pm.name, b.booking_date;


-- SELECT booking_date, COUNT(booking_date) AS num FROM bookings
--     WHERE amount_billed > 30
--     GROUP BY booking_date
--     ORDER BY num;


