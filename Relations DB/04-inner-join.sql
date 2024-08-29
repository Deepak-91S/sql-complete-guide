SELECT *
    FROM  users AS u
    INNER JOIN addresses AS a 
    ON u.address_id = a.id;


SELECT u.id, u.first_name, u.email, a.street, c.name AS city
    FROM users AS u
    INNER JOIN addresses AS a ON u.address_id = a.id
    INNER JOIN cities AS c ON a.city_id = c.id;
