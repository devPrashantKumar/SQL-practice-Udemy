-- SELECT * 
-- FROM relations.users AS u
-- INNER JOIN relations.addresses AS a
-- ON u.address_id = a.id;


SELECT * 
FROM relations.users AS u
INNER JOIN relations.addresses AS a
ON u.address_id = a.id
INNER JOIN relations.cities AS c
ON a.city_id = c.id;

SELECT * 
FROM relations.users AS u
INNER JOIN relations.addresses AS a
ON u.address_id = a.id
INNER JOIN relations.cities AS c
ON  c.id = a.city_id;
