ALTER TABLE users 
    ADD CONSTRAINT fk_address 
    FOREIGN KEY (address_id) 
    REFERENCES addresses(id) 
    ON DELETE CASCADE;
