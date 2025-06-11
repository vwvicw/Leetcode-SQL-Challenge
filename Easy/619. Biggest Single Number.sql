# Write your MySQL query statement below

# Having COUNT(*) = 1  appears only once
SELECT MAX(num)
FROM MyNumbers AS num
WHERE num IN (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(*) =1 
)
