-- SELECT * FROM users
--     WHERE id < 3
--     UNION
-- SELECT * FROM users
--     WHERE id > 5;


-- UNION is not useful in tables or result set containing diff columns
SELECT id, first_name FROM users
    UNION
SELECT id, street FROM addresses;