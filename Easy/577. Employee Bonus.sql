# Write your MySQL query statement below
select name,bonus
from Employee LEFT JOIN Bonus on Employee.empId = Bonus.empId
where Bonus.bonus < 1000 OR Bonus.bonus IS NULL
