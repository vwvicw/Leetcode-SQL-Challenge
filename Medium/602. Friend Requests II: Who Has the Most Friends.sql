# Write your MySQL query statement below

with cte as (
    select requester_id as id, accepter_id as friends from requestAccepted
    Union
    select accepter_id as id, requester_id from requestAccepted
)

SELECT id,COUNT(*) as num
FROM cte
GROUP BY id
ORDER BY COUNT(*) DESC
LIMIT 1




/*
with cte as (
    select requester_id as id, accepter_id as friends from requestAccepted
    Union
    select accepter_id as id, requester_id as friends from requestAccepted
)

select id, count(friends) as num from cte
group by 1
order by 2 desc
limit 1
*/
