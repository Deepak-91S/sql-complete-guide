-- SELECT e.id, e.name, e.date_planned, l.title, l.city_name, u.first_name, u.email FROM events AS e
--     INNER JOIN locations AS l ON l.id = e.location_id
--     INNER JOIN organizers AS o ON o.user_id = e.organizer_id
--     INNER JOIN users AS u ON u.id = o.user_id;


-- SELECT e.id, e.name, e.date_planned, l.title, l.city_name, u.first_name, u.email FROM events AS e
--     INNER JOIN locations AS l ON l.id = e.location_id
--     INNER JOIN events_users AS eu ON eu.event_id = e.id
--     INNER JOIN users AS u ON u.id = eu.user_id;


-- SELECT * FROM cities AS c
--     LEFT JOIN locations AS loc ON loc.city_name = c.name
--     LEFT JOIN events AS e ON e.location_id = loc.id;


-- SELECT * FROM cities AS c
--     LEFT JOIN locations AS loc ON loc.city_name = c.name
--     INNER JOIN events AS e ON e.location_id = loc.id;


SELECT * FROM cities AS c
    LEFT JOIN locations AS loc ON loc.city_name = c.name
    LEFT JOIN events AS e ON e.location_id = loc.id
    WHERE c.name = 'Munich' AND e.date_planned >= '2021-01-01';