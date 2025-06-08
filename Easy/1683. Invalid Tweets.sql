# Write your MySQL query statement below
select tweet_id
from Tweets
where Length(content)>15

/* Note
1. returns the length of a string (in bytes)
*/
