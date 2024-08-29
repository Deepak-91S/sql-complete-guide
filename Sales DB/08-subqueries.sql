SELECT customer_name, product_name 
    FROM (SELECT * FROM 
        sales WHERE 
        volume >= 2000) AS base_result;


--Creating view for queries used frequently

CREATE VIEW base_result AS SELECT * 
    FROM sales 
    WHERE volume >= 2000;

SELECT customer_name, product_name 
    FROM base_result;