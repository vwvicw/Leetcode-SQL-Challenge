
SELECT e1.employee_id, e1.department_id
FROM Employee e1
LEFT JOIN (SELECT employee_id, department_id, 1 AS only_dep
    FROM Employee 
    GROUP BY employee_id
    HAVING COUNT(*)=1) AS e2
ON e1.employee_id = e2.employee_id AND e1.department_id = e2.department_id
WHERE primary_flag = 'Y' OR only_dep = 1
/* Alternative Solution: UNION

SELECT employee_id, department_id FROM Employee
WHERE primary_flag = 'Y'

UNION

SELECT employee_id, department_id
FroM Employee
GROUP BY 1
HAVING COUNT(*) =1
*/
