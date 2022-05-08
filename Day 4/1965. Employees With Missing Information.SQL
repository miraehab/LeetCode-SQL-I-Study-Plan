SELECT e.employee_id
FROM Employees as e
WHERE e.employee_id NOT IN (SELECT employee_id 
                           FROM Salaries)
UNION

SELECT s.employee_id
FROM  Salaries as s
WHERE s.employee_id NOT IN (SELECT employee_id
                           FROM Employees)