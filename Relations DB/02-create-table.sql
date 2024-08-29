CREATE TABLE users(
    -- id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
    id SERIAL PRIMARY KEY, -- Postgres
    first_name VARCHAR(250) NOT NULL,
    last_name VARCHAR(250) NOT NULL,
    email VARCHAR(250) NOT NULL,
    address_id INT NOT NULL
    -- address_id INT REFERENCES addresses(id) ON DELETE CASCADE
);


CREATE TABLE addresses(
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    id SERIAL PRIMARY KEY, -- Postgres
    street VARCHAR(250) NOT NULL,
    house_number VARCHAR(30) NOT NULL,
    city_id INT NOT NULL
);


CREATE TABLE cities(
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    id SERIAL PRIMARY KEY, -- Postgres
    name VARCHAR(250) NOT NULL
);