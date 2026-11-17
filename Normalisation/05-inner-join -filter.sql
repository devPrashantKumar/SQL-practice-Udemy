SELECT * 
FROM relations.users AS u
INNER JOIN relations.addresses AS a
ON u.address_id = a.id
INNER JOIN relations.cities AS c
ON a.city_id = c.id
WHERE c.id = 1 OR c.id = 2
ORDER BY u.id DESC;