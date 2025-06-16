# Write your MySQL query statement below
# select user_id, concat(upper(left(name,1)), lower(right(name, length(name)-1))) as name
# from users

SELECT user_id, concat(upper(LEFT(name,1)), lower(RIGHT(name,LENGTH(name)-1)))as name
FROM Users
ORDER By user_id ASC



/*
select user_id, concat(upper(substring(name,1,1)), lower(substring(name,2,length(name)))) as name
from users
order by 1
*/
