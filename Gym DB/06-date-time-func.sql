-- SELECT EXTRACT(MONTH FROM last_checkin) FROM memberships;


-- SELECT EXTRACT(HOUR FROM last_checkin) FROM memberships;


-- SELECT EXTRACT(DOW FROM last_checkin) FROM memberships; -- for getting week day in postgres


-- SELECT WEEKDAY(last_checkin) FROM memberships; -- for getting week day in mysql


-- SELECT CONVERT(last_checkin, DATE), CONVERT(last_checkin, TIME)
--     FROM memberships; -- for getting date & time separately in mysql



-- SELECT last_checkin::TIMESTAMP::DATE, last_checkin::TIMESTAMP::TIME
--     FROM memberships; -- for getting date & time separately in postgres