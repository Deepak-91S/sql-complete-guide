-- SELECT * FROM sales;


SELECT product_name,
    customer_name,
    date_created,
    volume / 100 AS total_sales -- total sales is shown only in result set not stored in db
    FROM sales;