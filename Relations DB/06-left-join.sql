SELECT a.street,a.city_id,u.email
    FROM  addresses AS a
    LEFT JOIN  users AS u
    ON u.address_id = a.id;



SELECT a.street,a.city_id,u.email,c.name
    FROM  addresses AS a
    LEFT JOIN  users AS u
    ON u.address_id = a.id
    LEFT JOIN cities AS C
    ON c.id = a.city_id;