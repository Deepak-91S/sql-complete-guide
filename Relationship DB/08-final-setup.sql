CREATE TABLE projects(
--    id INT PRIMARY KEY AUTO_INCREMENT,
    id SERIAL PRIMARY KEY,
    title VARCHAR (300) NOT NULL,
    deadline DATE 
);


CREATE TABLE company_buildings (
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    id SERIAL PRIMARY KEY,
    name VARCHAR(300) NOT NULL
);


CREATE TABLE teams (
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    id SERIAL PRIMARY KEY,
    name VARCHAR (300) NOT NULL,
    -- building_id INT ,
    -- FOREIGN KEY(building_id) REFERENCES company_buildings(id) ON DELETE SET NULL
    building_id INT REFERENCES company_buildings(id) ON DELETE SET NULL
);


CREATE TABLE employees (
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(250) NOT NULL,
    last_name VARCHAR (250) NOT NULL,
    birthdate DATE NOT NULL,
    email VARCHAR(250) UNIQUE NOT NULL,
    -- team_id INT NOT NULL DEFAULT 1,
    -- FOREIGN KEY(team_id) REFERENCES teams(id) ON DELETE SET DEFAULT
    team_id INT DEFAULT 1 REFERENCES teams ON DELETE SET DEFAULT
);


CREATE TABLE intranet_accounts(
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    id SERIAL PRIMARY KEY,
    -- email VARCHAR(250) NOT NULL,
    -- FOREIGN KEY(email) REFERENCES employees(email) ON DELETE CASCADE,
    email VARCHAR(250) REFERENCES employees(email) ON DELETE CASCADE,
    password VARCHAR(250) NOT NULL
);


-- CREATE TABLE projects_employees(
--     -- id INT PRIMARY KEY AUTO_INCREMENT,
--     id SERIAL PRIMARY KEY,
--     employee_id INT REFERENCES employees ON DELETE CASCADE,
--     project_id INT REFERENCES projects ON DELETE CASCADE
--     -- employee_id INT NOT NULL,
--     -- FOREIGN KEY (employee_id) REFERENCES employees(id) ON DELETE CASCADE,
--     -- project_id INT NOT NULL,
--     -- FOREIGN KEY (project_id) REFERENCES projects(id) ON DELETE CASCADE
-- );


-- Composite PRIMARY KEY
CREATE TABLE projects_employees(    
    employee_id INT,
    project_id INT REFERENCES projects ON DELETE CASCADE,
    -- employee_id INT NOT NULL,
    -- FOREIGN KEY (employee_id) REFERENCES employees(id) ON DELETE CASCADE,
    -- project_id INT NOT NULL,
    -- FOREIGN KEY (project_id) REFERENCES projects(id) ON DELETE CASCADE
    PRIMARY KEY (employee_id, project_id),
    FOREIGN KEY (employee_id) REFERENCES employees ON DELETE CASCADE -- Composite foreign key example
);
