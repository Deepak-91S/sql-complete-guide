SELECT booking_date, COUNT(booking_date) FROM bookings
    GROUP BY booking_date
    HAVING SUM(amount_billed) > 30;