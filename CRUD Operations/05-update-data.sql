USE sales_examples;

UPDATE sales
SET
    product_name = 'A Truck',
    volume = volume*1000
WHERE id = 13;