-- 1.Look for volume greater than 1000
SELECT * FROM sales
    WHERE volume > 1000;


-- 4.Look for recurring sales
SELECT * FROM sales
    WHERE is_recurring IS TRUE;


-- 5.Find disputed sales with volume greater than 5000
SELECT * FROM sales
    WHERE (is_disputed IS TRUE) AND (volume > 2000);


-- 6.All sales between two dates
SELECT * FROM sales
    WHERE date_created >= '2021-01-01' AND date_created <= '2021-06-30';

SELECT * FROM sales
    WHERE date_created BETWEEN '2021-01-01' AND '2021-06-30';


-- Filtering with text
SELECT * FROM sales
    WHERE customer_name <> 'Company B';

SELECT * FROM sales
    WHERE customer_name > 'Company B'; -- Charac comparison starts from first moves to end


-- 7. Find orders fulfilled less 5 days
SELECT * FROM sales
    WHERE (date_fulfilled IS NOT NULL) AND (date_fulfilled <= date_created + 5);

SELECT * FROM sales
    WHERE (date_fulfilled IS NOT NULL) AND (date_fulfilled - date_created) <= 5;

SELECT * FROM sales
    WHERE (date_fulfilled IS NOT NULL) AND (EXTRACT (DAY (date_fulfilled - date_created))) <= 5; -- Used when time stamp is the data type, where diff is calculated based on hours


-- SORTING & ORDER & DISTINCT

-- 2. Finding top 10 & 3. bottom 10 sales
SELECT * FROM sales 
    ORDER BY volume;

SELECT * FROM sales 
    ORDER BY volume DESC;

SELECT * FROM sales 
    ORDER BY volume 
    DESC OFFSET 2;

-- 7 & 8 DISTINCT values
SELECT DISTINCT customer_name, product_name 
    FROM sales;