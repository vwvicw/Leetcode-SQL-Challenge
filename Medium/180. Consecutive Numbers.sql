# Write your MySQL query statement below

SELECT DISTINCT a.Num as ConsecutiveNums
FROM Logs a
JOIN Logs b ON a.id = b.id+1 AND a.num = b.num
JOIN Logs c ON a.id = c.id+2 AND a.num = c.num

/*
select distinct(num) as ConsecutiveNums from (
    select *,
    lag(num,1) over (order by id)as "lag",
    lead(num,1) over (order by id)as "lead"
    from logs
) temp
where num = temp.lag and temp.lag = temp.lead
*/
