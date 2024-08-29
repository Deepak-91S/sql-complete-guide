-- SELECT amount_billed,
--     CASE WHEN amount_billed > 15 AND amount_billed <= 30 THEN 'Normal Day'
--         WHEN amount_billed > 30 THEN 'Good Day'
--         ELSE 'Bad Day'
--         END
--     FROM orders;


SELECT days_of_week, 
    CASE WHEN days_of_week = 1 THEN 'MONDAY'
    WHEN days_of_week = 2 THEN 'TUESDAY'
    WHEN days_of_week = 3 THEN 'WEDNESDAY'
    WHEN days_of_week = 4 THEN 'THURSDAY'
    WHEN days_of_week = 5 THEN 'FRIDAY'
    WHEN days_of_week = 6 THEN 'SATURDAY'
    ELSE 'SUNDAY'
    END
    FROM (
SELECT EXTRACT (DOW FROM last_checkin) AS days_of_week FROM memberships
    );