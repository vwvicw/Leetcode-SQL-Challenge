# Write your MySQL query statement below

SELECT (IFNULL((SELECT DISTINCT salary
FROM Employee
ORDER by salary DESC
LIMIT 1 OFFSET 1), NULL)) as SecondHighestSalary



/*
SELECT
    IFNULL(
      (SELECT DISTINCT Salary
       FROM Employee
       ORDER BY Salary DESC
        LIMIT 1 OFFSET 1),
    NULL) AS SecondHighestSalary
*/
