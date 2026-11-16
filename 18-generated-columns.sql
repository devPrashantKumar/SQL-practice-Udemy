-- CREATE TABLE IF NOT EXISTS users_generated(
--     id INT PRIMARY KEY AUTO_INCREMENT, 
--     first_name VARCHAR(200) NOT NULL,
--     last_name VARCHAR(200) NOT NULL,
--     full_name VARCHAR(400) GENERATED ALWAYS AS (CONCAT(first_name,' ',last_name))
-- );

-- INSERT INTO users_generated(first_name,last_name) 
-- VALUES ('Max',"Schwarz");

-- DROP TABLE users_generated;