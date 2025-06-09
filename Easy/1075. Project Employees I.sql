select project_id, ROUND(SUM(experience_years)/count(p.employee_id),2) AS average_years
from Project p
JOIN Employee e on p.employee_id = e.employee_id
GROUP BY project_id
