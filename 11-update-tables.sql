-- -- MySQL Rename a table
ALTER TABLE conversation RENAME conversations;

-- PostgreSQL Rename a table
ALTER TABLE conversation RENAME TO conversations;

-- MySQL alter column
ALTER TABLE employers
 MODIFY COLUMN yearly_revenue FLOAT;

-- PostgreSQL alter column
ALTER TABLE employers
 ALTER COLUMN yearly_revenue SET DATA TYPE FLOAT;

-- MySQL alter column full_name in users table
ALTER TABLE users 
    MODIFY COLUMN full_name VARCHAR(250);

-- PostgreSQL alter column full_name in users table
ALTER TABLE users 
    ALTER COLUMN full_name SET DATA TYPE VARCHAR(250);