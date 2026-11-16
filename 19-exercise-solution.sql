DROP DATABASE online_shop;
CREATE DATABASE online_shop;
use online_shop;

CREATE TABLE products(
    name VARCHAR(200),
    price NUMERIC(10,2),
    description TEXT,
    amount_in_stock SMALLINT,
    image_path VARCHAR(500)
);

ALTER TABLE products
MODIFY COLUMN name VARCHAR(200) NOT NULL,
MODIFY COLUMN price NUMERIC(10,2) NOT NULL CHECK (price > 0),
MODIFY COLUMN description TEXT NOT NULL,
MODIFY COLUMN amount_in_stock SMALLINT CHECK (amount_in_stock >= 0);

ALTER TABLE products
ADD COLUMN id INT PRIMARY KEY AUTO_INCREMENT;

-- CREATE TABLE products(
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(200) NOT NULL,
--     price NUMERIC(10,2) NOT NULL,
--     description TEXT NOT NULL,
--     amount_in_stock SMALLINT,
--     image_path VARCHAR(500)
-- );

-- ALTER TABLE products
-- ADD CONSTRAINT price_constraint CHECK (price > 0),
-- ADD CONSTRAINT stock_constraint CHECK (stock >= 0)

INSERT INTO products(name,price,description,amount_in_stock,image_path)
VALUES ('A Book', 12.99, 'This is a book - and this text could be way longer!', 39, 'uploads/images/products/a-book.png');
