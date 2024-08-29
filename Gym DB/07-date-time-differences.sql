-- SELECT last_checkout - last_checkin FROM memberships; -- Postgres - to get diff , by using Interval data type


-- SELECT TIMESTAMPDIFF(MINUTE, last_checkin, last_checkout) FROM memberships; -- to get diff - time in mysql, but its just a integer value


-- SELECT membership_end - membership_start FROM memberships; --Postgres
-- SELECT NOW() - membership_start FROM memberships;

-- SELECT DATEDIFF(membership_end, membership_start) FROM memberships; -- MySQL
