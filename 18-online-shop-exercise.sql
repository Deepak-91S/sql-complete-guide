CREATE DATABASE online_Shop;

DROP TABLE products;

USE online_Shop;

CREATE TABLE products(
    product_name VARCHAR(200),
    price NUMERIC(5,2),
    description VARCHAR(250),
    amount_in_stock INT,
    image TEXT
);

INSERT INTO products (product_name, price, description, amount_in_stock, image) 
    VALUES ('spinach', 10.05, 'Spinach is my fav food', 15, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_BVkMcnA7d5sUlAsWIpi7CSZw1HGVyf2pEhmlx_s6h0Kf9uJ7');

INSERT INTO products (product_name, price, description, amount_in_stock, image) 
    VALUES ('brocoli', 12.02, 'Brocoli is my fav food', 10, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_BVkMcnA7d5sUlAsWIpi7CSZw1HGVyf2pEhmlx_s6h0Kf9uJ7');


ALTER TABLE products
    MODIFY COLUMN product_name VARCHAR(200) NOT NULL,
    MODIFY COLUMN price NUMERIC(5,2) NOT NULL,
    ADD CONSTRAINT price_range CHECK (price > 0),
    MODIFY COLUMN description VARCHAR(250) NOT NULL,
    MODIFY COLUMN amount_in_stock INT NOT NULL,
    MODIFY COLUMN image TEXT NOT NULL;

-- ALTER TABLE products    
--     MODIFY COLUMN description TEXT NOT NULL,
--     MODIFY COLUMN image VARCHAR(250) NOT NULL;

-- Postgres
ALTER TABLE products
    ALTER COLUMN product_name SET NOT NULL,
    ALTER COLUMN price SET NOT NULL,
    ALTER COLUMN description TYPE TEXT,
    ALTER COLUMN description SET NOT NULL,
    ALTER COLUMN amount_in_stock SET NOT NULL ,
    ALTER COLUMN image TYPE VARCHAR(250),
    ALTER COLUMN image SET NOT NULL,
    ADD CONSTRAINT price_range CHECK (price > 0),
    ADD CONSTRAINT amount_range CHECK (amount_in_stock >= 0);


ALTER TABLE products
    ADD COLUMN id INT PRIMARY KEY AUTO_INCREMENT;

--Postgres
 ALTER TABLE products
    ADD COLUMN id SERIAL PRIMARY KEY;

