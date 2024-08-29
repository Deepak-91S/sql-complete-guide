SELECT e.first_name, e.email, p.title, p.deadline 
    FROM employees AS e
    LEFT JOIN projects_employees AS pe ON pe.employee_id = e.id
    LEFT JOIN projects AS p ON p.id = pe.project_id;


SELECT e.first_name, e.email ,t.name
    FROM employees AS e
    INNER JOIN teams AS t ON t.id = e.team_id
    WHERE t.name = 'Admin';


SELECT e.id, e.first_name, e.email ,cb.name
    FROM employees AS e
    INNER JOIN teams AS t ON t.id = e.team_id
    INNER JOIN company_buildings AS cb ON cb.id = t.building_id
    WHERE cb.id = 3
    ORDER BY e.id DESC;