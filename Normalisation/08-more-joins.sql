SELECT * 
FROM cities AS c
INNER JOIN addresses AS a ON c.id = a.city_id;

SELECT * 
FROM cities AS c
LEFT JOIN addresses AS a ON c.id = a.city_id;

SELECT * 
FROM cities AS c
LEFT JOIN addresses AS a ON c.id = a.city_id
INNER JOIN users AS u On u.address_id = a.id;

SELECT * 
FROM cities AS c
LEFT JOIN addresses AS a ON c.id = a.city_id
LEFT JOIN users AS u On u.address_id = a.id;