SELECT event_day as day, emp_id, SUM(out_time - in_time) as total_time
FROM Employees
GROUP BY 1, 2