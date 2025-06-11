# Write your MySQL query statement below
# Consecutive: lead()+lag()? or maybe switching studnet is a easeier way
# Edge case: odd number of students

/*
    select (case when id % 2 != 0 and id!=(select count(*) from seat) then id+1
            when mod(id,2) = 0 then id-1 else id end) as id, student 
    from seat
    order by 1
*/
SELECT IF(id <(SELECT MAX(id) FROM seat),IF(id%2 = 0, id - 1, id +1), IF(id%2 = 0, id -1,id)) As id, student
FROM seat
ORDER BY 1
