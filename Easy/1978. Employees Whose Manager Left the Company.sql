# Write your MySQL query statement below
# salary < 3000
# comparion -> self join
# ORDER  By

SELECT employee_id
FROM Employees a
WHERE salary < 30000 AND manager_id NOT IN (
    SELECT DISTINCT(employee_id)
    FROM Employees
    GROUP BY employee_id
)
ORDER BY employee_id
