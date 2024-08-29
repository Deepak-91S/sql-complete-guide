-- DROP TABLE users;
-- DROP TABLE conversations;
-- DROP TABLE employers;

-- Types once created will be there for ever, so no need to create twice.
-- CREATE TYPE employment_status AS ENUM('employed', 'self-employed', 'unemployed'); -- Postgres

CREATE TABLE users (
    id SERIAL PRIMARY KEY, -- Postgres
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(250) NOT NULL,
    yearly_salary INT CHECK (yearly_salary > 0),
    -- current_status ENUM ('employed', 'self-employed', 'unemployed') -- MySQL
    current_status employment_status NOT NULL -- Postgres
);


-- Generated Columns
CREATE TABLE users (
    -- id SERIAL PRIMARY KEY, -- Postgres
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    full_name VARCHAR(401) GENERATED ALWAYS AS (CONCAT(first_name,' ',last_name)),
    yearly_salary INT CHECK (yearly_salary > 0),
    current_status ENUM ('employed', 'self-employed', 'unemployed') -- MySQL
    -- current_status employment_status NOT NULL -- Postgres
);

CREATE TABLE employers (
    id SERIAL PRIMARY KEY, -- Postgres
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    company_name VARCHAR(250) NOT NULL,
    company_address VARCHAR(250) NOT NULL,
    yearly_revenue FLOAT CHECK (yearly_revenue > 0),
    is_hiring BOOLEAN DEFAULT FALSE
);

CREATE TABLE conversations(
    id SERIAL PRIMARY KEY, -- Postgres
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    company_id INT NOT NULL,
    message TEXT NOT NULL,
    date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

