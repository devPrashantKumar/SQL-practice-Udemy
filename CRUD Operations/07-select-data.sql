-- USE sales_examples;

SELECT * FROM sales;

SELECT 
    customer_name, product_name, volume, date_created 
FROM sales;

SELECT 
    customer_name, product_name, volume AS total_sales, date_created 
FROM sales;