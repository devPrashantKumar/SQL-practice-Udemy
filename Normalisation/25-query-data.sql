SELECT * 
FROM employees AS e
LEFT JOIN projects_employees AS pe ON e.id = pe.employee_id
LEFT JOIN projects AS p ON pe.project_id = p.id;

SELECT * 
FROM employees AS e
LEFT JOIN projects_employees AS pe ON e.id = pe.employee_id
LEFT JOIN projects AS p ON pe.project_id = p.id
LEFT JOIN teams AS t ON e.team_id = t.id
LEFT JOIN company_buildings AS cp ON cp.id = t.building_id;

SELECT * 
FROM employees AS e
INNER JOIN teams AS t ON e.team_id = t.id
WHERE t.id = 2;

SELECT * 
FROM employees AS e
INNER JOIN teams AS t ON e.team_id = t.id
INNER JOIN company_buildings AS cp ON cp.id = t.building_id
WHERE cp.id = 3;