# Write your MySQL query statement below
/*SELECT reports_to, name, COUNT(employee_id) AS reports_count
FROM Employees
HAVING reports_to IS NOT NULL
GROUP BY reports_to
*/

SELECT b.employee_id, b.name, COUNT(DISTINCT a.employee_id) AS reports_count,
ROUND(AVG(a.age)) AS average_age
FROM Employees a
JOIN Employees b 
ON a.reports_to = b.employee_id
GROUP by 1,2
ORDER BY b.employee_id
