# Write your MySQL query statement below

SELECT class
FROM (SELECT class, count(student) as number
FROM Courses
Group by class) AS A
WHERE A.number >= 5
