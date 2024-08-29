

-- For each booking_date, calculate the sum of amount_billed and the difference between the maximum and minimum amount_tipped. Rank the dates by the total amount_billed in descending order.

-- SELECT 
--     booking_date, 
--     total, 
--     max_tip - min_tip AS tip_difference,
--     RANK() OVER (ORDER BY total DESC) AS rank
-- FROM (
--     SELECT 
--         booking_date, 
--         SUM(amount_billed) AS total, 
--         MIN(amount_tipped) AS min_tip, 
--         MAX(amount_tipped) AS max_tip  
--     FROM 
--         bookings
--     GROUP BY 
--         booking_date
-- ) AS subquery
-- ORDER BY 
--     total DESC;


-- Find the booking_date and total number of guests (num_guests) for dates where the total amount_tipped is greater than 10. Only consider bookings where amount_billed is less than 100.

-- SELECT booking_date, SUM(num_guests) AS guests FROM (
-- SELECT * FROM bookings
-- WHERE amount_billed < 100
-- )
-- GROUP BY booking_date
-- HAVING SUM(amount_tipped) > 10;


-- For each payment_id, calculate the total amount_billed, the average amount_tipped, and the number of bookings. Return the payment_id, total amount_billed, average amount_tipped, and the count of bookings
-- SELECT payment_id, SUM(amount_billed), AVG(amount_tipped), COUNT(id) AS count FROM bookings
-- GROUP BY payment_id;


-- For each payment_id, calculate the cumulative number of bookings (id) made, ordered by the booking_date. Include the payment_id, booking_date, and cumulative count of bookings.

-- SELECT payment_id, 
--        booking_date, 
--        COUNT(id) OVER (PARTITION BY payment_id ORDER BY booking_date) AS cumulative_bookings
-- FROM bookings
-- ORDER BY payment_id ASC, booking_date ASC;

-- Find the table_id that has the highest average amount_billed across all bookings. Return the table_id and the corresponding average amount_billed

-- SELECT table_id,AVG(amount_billed) FROM bookings
--     GROUP BY table_id
--     HAVING AVG(amount_billed) = (
-- SELECT MAX(bill) FROM (
-- SELECT table_id, AVG(amount_billed) AS bill FROM bookings
--     GROUP BY table_id
-- ));

-- Find the booking_date and the total number of guests (num_guests) for dates where the total amount_tipped is greater than 20. Only include bookings where the amount_billed is greater than 50.

-- SELECT booking_date, SUM(num_guests)
--     FROM (
--     SELECT * FROM bookings
--         WHERE amount_billed > 50
--     )
--     GROUP BY booking_date
--     HAVING SUM(amount_tipped) > 20;


-- For each booking_date, calculate the total number of guests and the total amount billed. Return the booking_date, total guests, and total amount billed, ordered by the total amount billed in descending order.

-- SELECT booking_date, SUM(num_guests) AS Guests, SUM(amount_billed) AS bill FROM bookings
--     GROUP BY booking_date
--     ORDER BY bill DESC;


-- For each table_id, calculate the total amount_billed and rank the table_id values based on this total. Include the table_id, total amount_billed, and the rank.


-- SELECT table_id, total_bill, RANK() OVER( ORDER BY total_bill DESC) AS rank FROM (
-- SELECT table_id, SUM(amount_billed) AS total_bill FROM bookings
--     GROUP BY table_id
-- );


-- For each booking, calculate the total number of guests (num_guests) cumulatively for the same table_id, 
-- ordered by booking_date. Display the table_id, booking_date, and cumulative num_guests.

-- SELECT table_id, booking_date, SUM(num_guests) OVER(PARTITION BY table_id ORDER BY booking_date) FROM bookings;


-- Find the table_id that had the second-highest total amount_billed. Return the table_id and the corresponding total amount_billed.

-- SELECT table_id, total_bill FROM(
-- SELECT table_id, SUM(amount_billed) AS total_bill FROM bookings
--     GROUP BY table_id 
-- )AS sub_table
-- ORDER BY total_bill DESC
-- LIMIT 1 OFFSET 1;









