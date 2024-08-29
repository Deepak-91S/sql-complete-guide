--ENUM type - Postgres
CREATE TYPE employment_status AS ENUM('employed', 'self-employed', 'unemployed');

CREATE TABLE users (
    full_name VARCHAR(250) NOT NULL,
    yearly_salary INT CHECK CONSTRAINT (yearly_salary > 0),
    current_status ENUM('employed', 'self-employed', 'unemployed'),
    -- current_status employment_status NOT NULL
);

UPDATE users
    SET yearly_salary = NULL
    WHERE full_name = 'David Warner';

ALTER TABLE users
    ADD CONSTRAINT yearly_salary_positive CHECK (yearly_salary > 0);