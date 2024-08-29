SELECT c.id, c.name, u.first_name, u.last_name 
    FROM cities AS c
    LEFT JOIN addresses AS a ON a.city_id = c.id
    LEFT JOIN users AS u ON u.address_id = a.id
    WHERE u.first_name IS NOT NULL;
 