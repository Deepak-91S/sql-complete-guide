-- INSERT INTO events(
--     name,
--     date_planned,
--     description,
--     max_participants,
--     min_age
-- )VALUES(
--     'A first event',
--     '2022-09-04 16:30:00',
--     'This is just desc',
--     20,
--     18 
-- ),
-- (
--     'B first event',
--     '2022-08-04 16:30:00',
--     'This is just desc',
--     10,
--     18 
-- );

-- UPDATE events SET min_age = 16 WHERE id = 1;

DELETE FROM events WHERE id = 2;