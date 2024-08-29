-- DROP TABLE employees;

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(250) NOT NULL,
    last_name VARCHAR(250) NOT NULL,
    supervisor_id INT DEFAULT NULL REFERENCES employees ON DELETE SET NULL
);


INSERT INTO employees (first_name, last_name, supervisor_id)
    VALUES ('MS', 'Dhoni', NULL),
    ('Virat',' Kohli', 1),
    ('Sanju', 'Samson', 2);

SELECT * FROM 
    employees AS e
    INNER JOIN employees AS em ON em.id = e.supervisor_id;