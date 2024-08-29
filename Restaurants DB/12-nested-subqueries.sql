--  SELECT MAX(bill) FROM (
--  SELECT booking_date, SUM(amount_billed) AS bill FROM bookings
--     GROUP BY booking_date
--  ) ;

SELECT booking_date FROM bookings
    GROUP BY booking_date 
    HAVING SUM(amount_billed) = (
SELECT MIN(bill) FROM (
 SELECT booking_date, SUM(amount_billed) AS bill FROM bookings
    GROUP BY booking_date
) );


