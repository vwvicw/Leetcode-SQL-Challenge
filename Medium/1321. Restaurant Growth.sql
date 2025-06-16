# Write your MySQL query statement below
/*
SELECT visited_on, SUM(amount) as amount, SUM(amount)/7 as average_amount
FROM Customer
GROUP BY visited_on
Having MAX(visited_on)
*/

SELECT a.visited_on, SUM(b.amount) as amount, ROUND(SUM(b.amount)/7,2) as average_amount
FROM (SELECT DISTINCT visited_on FROM Customer) a
JOIN Customer b
ON DATEDIFF(a.visited_on, b.visited_on) BETWEEN 0 AND 6 #Order of the date matters
GROUP BY a.visited_on
HAVING COUNT(DISTINCT b.visited_on) = 7
ORDER By a.visited_on ASC








/*
with cte as (
    select visited_on, 
    round(sum(amount) over(order by visited_on rows between 6 preceding and current row),2) amount, 
    round(avg(amount) over(order by visited_on rows between 6 preceding and current row),2) as "average_amount" from(
        select visited_on, sum(amount) as amount
        from customer
        group by 1
        order by 1
    )temp
)

select * from cte
where visited_on >= DATE_ADD((SELECT CAST(min(visited_on) AS DATE) FROM CTE),INTERVAL 6 day)
order by 1
*/
