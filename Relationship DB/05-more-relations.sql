CREATE TABLE company_buildings (
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- id SERIAL PRIMARY KEY,
    name VARCHAR(300) NOT NULL
);


CREATE TABLE teams (
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- id SERIAL PRIMARY KEY,
    name VARCHAR (300) NOT NULL,
    building_id INT ,
    FOREIGN KEY(building_id) REFERENCES company_buildings(id) ON DELETE SET NULL
    -- building_id INT REFERENCES company_buildings(id) ON DELETE SET NULL
);


CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- id SERIAL PRIMARY KEY,
    first_name VARCHAR(250) NOT NULL,
    last_name VARCHAR (250) NOT NULL,
    birthdate DATE NOT NULL,
    email VARCHAR(250) UNIQUE NOT NULL,
    team_id INT NOT NULL DEFAULT 1,
    FOREIGN KEY(team_id) REFERENCES teams(id) ON DELETE SET DEFAULT
    -- team_id INT DEFAULT 1 REFERENCES teams ON DELETE SET DEFAULT
);


CREATE TABLE intranet_accounts(
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- id SERIAL PRIMARY KEY,
    email VARCHAR(250) NOT NULL,
    FOREIGN KEY(email) REFERENCES employees(email) ON DELETE CASCADE,
    -- email VARCHAR(250) REFERENCES employees(email) ON DELETE CASCADE,
    password VARCHAR(250) NOT NULL
);




