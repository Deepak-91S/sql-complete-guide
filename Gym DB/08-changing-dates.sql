-- Postgres
-- SELECT membership_start + 7, membership_start FROM memberships;


-- MySQL
-- SELECT DATE_ADD(membership_start, INTERVAL 7 DAY), membership_start FROM memberships; -- INTERVAL 7 YEAR or 7 MONTH


--Postgres
SELECT (membership_start + INTERVAL '7 MONTH')::TIMESTAMP::DATE, membership_start FROM memberships;