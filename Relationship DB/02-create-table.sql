
-- CREATE TABLE employees (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     -- id SERIAL PRIMARY KEY, -- Postgres
--     first_name VARCHAR(250) NOT NULL,
--     last_name VARCHAR(250) NOT NULL,
--     birthdate DATE NOT NULL,
--     email VARCHAR(250) UNIQUE NOT NULL
-- );


-- CREATE TABLE intranet_accounts(
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     -- id SERIAL PRIMARY KEY, -- Postgres
--     -- email VARCHAR(250) REFERENCES employees(email) ON DELETE CASCADE, --Postgres
--     email VARCHAR(250) NOT NULL,
--     FOREIGN KEY (email) REFERENCES employees(email) ON DELETE CASCADE,
--     password VARCHAR(250) NOT NULL
-- );


-- CREATE TABLE teams (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     -- id SERIAL PRIMARY KEY, -- Postgres
--     name VARCHAR(250) NOT NULL,
--     -- building INT NOT NULL,
--     -- FOREIGN KEY (building) REFERENCES buildings(id) ON DELETE SET NULL -- MySQL
--     building REFERENCES buildings(id) ON DELETE SET NULL

-- );


-- CREATE TABLE projects (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     -- id SERIAL PRIMARY KEY, -- Postgres
--     title VARCHAR(250) NOT NULL,
--     deadline DATE NOT NULL,
--     employees -- ?
-- );


-- CREATE TABLE buildings (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     -- id SERIAL PRIMARY KEY, -- Postgres
--     name VARCHAR(250) NOT NULL
-- );