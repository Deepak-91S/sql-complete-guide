CREATE TABLE payment_methods (
    -- for mysql 
    -- id INT PRIMARY KEY AUTO_INCREMENT, 
    id SERIAL PRIMARY KEY,
    name VARCHAR(200)
);

CREATE TABLE tables (
 -- for mysql 
 -- id INT PRIMARY KEY AUTO_INCREMENT, 
    id SERIAL PRIMARY KEY,
    num_seats INT,
    category VARCHAR(200)
);