# Write your MySQL query statement below
select EmployeeUNI.unique_id, Employees.name
from Employees LEFT JOIN EmployeeUNI on Employees.id = EmployeeUNI.id


/* Note
1. The LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right table (table2). The result is 0 records from the right side, if there is no match.
*/
