-- CREATE TABLE users (
--     full_name VARCHAR(250) NOT NULL,
--     -- ...
-- );

-- Postgresql
-- Modify Column
ALTER TABLE users 
    ALTER COLUMN full_name SET NOT NULL,
    ALTER COLUMN current_status SET NOT NULL;

ALTER TABLE employers
    ALTER COLUMN company_name SET NOT NULL,
    ALTER COLUMN company_address SET NOT NULL;

ALTER TABLE conversations
    ALTER COLUMN user_name SET NOT NULL,
    ALTER COLUMN employer_name SET NOT NULL;

-- MySQL
-- Modify Column
ALTER TABLE users
    MODIFY COLUMN full_name VARCHAR(250) NOT NULL,
    MODIFY COLUMN current_status ENUM('employed', 'self-employed', 'unemployed') NOT NULL;

ALTER TABLE employers
    MODIFY COLUMN company_name VARCHAR(200) NOT NULL,
    MODIFY COLUMN company_address VARCHAR(250) NOT NULL;

ALTER TABLE conversations
    MODIFY COLUMN user_name VARCHAR(250) NOT NULL,
    MODIFY COLUMN employer_name VARCHAR(200) NOT NULL;

