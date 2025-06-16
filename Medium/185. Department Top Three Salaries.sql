# Write your MySQL query statement below
SELECT Department.name as 'Department', e.name as 'Employee', e.salary Salary

FROM (SELECT departmentId, name, salary, DENSE_RANK() OVER(PARTITION BY departmentId ORDER BY salary DESC)AS r
FROM Employee) e
JOIN Department
ON e.departmentId = Department.id
WHERE r <= 3


/*
select d.name as department,a.name as employee, a.salary as salary from
(select *, dense_rank() over(partition by departmentId order by salary DESC)rn
from employee) a 
join department as d
on a.departmentId = d.id
where a.rn<=3
*/
