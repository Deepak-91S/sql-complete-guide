-- INSERT INTO cities (name) 
--     VALUES ('Montreal'), ('New York'), ('London'), ('Chennai');


-- INSERT INTO addresses (street, house_number, city_id)
--     VALUES 
--         ('St. Catherine', '1645', 1),
--         ('Rue Gaspe', '700', 1),
--         ('Cathedral', '10A', 3),
--         ('Times Square', '15', 2);


-- INSERT INTO users (first_name,last_name,email,address_id) 
--     VALUES 
--         ('Deepak', 'Subramaniam', 'deepak@gmail.com',1),
--         ('Dhoni', 'MS', 'dhoni@yahoo.com',3),
--         ('David', 'Warner', 'david@aus.com',2);


INSERT INTO cities (name)
VALUES ('Munich'), ('Rome'), ('Tokyo'), ('Washington, D.C.');

INSERT INTO addresses (street, house_number, city_id)
VALUES 
  ('Beerstreet', '91', 4),
  ('Beerstreet', '12', 4),
  ('Pizzastreet', '1', 5),
  ('Burgerstreet', '9', 2),
  ('Anotherstreet', '12', 1),
  ('Smallstreet', '11', 3);


INSERT INTO users (first_name, last_name, email, address_id)
VALUES 
  ('Marina', 'Marks', 'marina@test.com', 2),
  ('Hans', 'Mayer', 'hansm@test.com', 5),
  ('Maria', 'Marionatti', 'maria@test.com', 7),
  ('Michael', 'Smith', 'michael@test.com', 8);


