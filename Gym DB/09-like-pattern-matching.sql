-- SELECT first_name LIKE 'Max' FROM memberships;

-- Pattern Matching: When we dont know exact value
-- SELECT first_name LIKE 'Ma%' FROM memberships;
-- SELECT first_name LIKE '%u%' FROM memberships;
-- SELECT first_name LIKE '_u%' FROM memberships; -- underscore used when we know about how many chars at start or end


--Case Sensitive issue in Postgres use - ILIKE
SELECT first_name ILIKE 'ma%' FROM memberships;
