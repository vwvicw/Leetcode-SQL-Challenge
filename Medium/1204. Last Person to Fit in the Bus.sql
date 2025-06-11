# Write your MySQL query statement below
# ORDER BY turn
/*
SELECT a.person_name
FROM Queue a
JOIN Queue b
ON a.turn >= b.turn
GROUP BY a.turn
HAVING SUM(b.weight)<= 1000
ORDER By a.turn DESC
Limit 1
*/

WITH OrderedQueue AS (
    SELECT *, 
           SUM(weight) OVER (ORDER BY turn) AS running_total
    FROM Queue
)
SELECT person_name
FROM OrderedQueue
WHERE running_total <= 1000
ORDER BY turn DESC
LIMIT 1;
