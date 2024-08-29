-- INSERT INTO customers(
--     first_name,
--     last_name,
--     email
-- )
-- VALUES(
--     'Ken',
--     'Brooks',
--     'ken@test.com'
-- );



-- SELECT c.email FROM customers AS c 
--     INNER JOIN orders AS o ON
--     o.customer_id = c.id;



-- IN used to get values in list of ids
SELECT c.email FROM customers AS c WHERE c.id IN (
    SELECT o.customer_id FROM orders  AS o  
);
