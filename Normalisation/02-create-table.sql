USE relations;

DROP TABLE IF EXISTS cities;
DROP TABLE IF EXISTS addresses;
DROP TABLE IF EXISTS users;

CREATE TABLE cities(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(300) NOT NULL
);

CREATE TABLE addresses(
    id INT PRIMARY KEY AUTO_INCREMENT,
    street VARCHAR(300) NOT NULL,
    house_number VARCHAR(50) NOT NULL,
    city_id INT NOT NULL
    -- CONSTRAINT fk_addresses_city FOREIGN KEY (city_id) REFERENCES cities(id);
);

CREATE TABLE users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    email VARCHAR(300) NOT NULL,
    address_id INT NOT NULL
    -- CONSTRAINT fk_users_address FOREIGN KEY (address_id) REFERENCES addresses(id)
);



