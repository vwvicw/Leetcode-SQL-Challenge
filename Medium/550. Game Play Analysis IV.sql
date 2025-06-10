# fraction of players AVG()
# Round()
# Consecutive 2 days login
# first logged in MIN()
# Date comparison DATEDIFF(date,date)
/*
WITH etc_activity AS (
    SELECT player_id,MIN(event_date)as event_date
    FROM Activity
    GROUP BY player_id
)
SELECT ROUND(COUNT(distinct a.player_id)/Count(DISTINCT b.player_id),2) AS fraction
FROM activity a
RIGHT JOIN etc_activity b ON a.player_id = b.player_id AND a.event_date-1 = b.event_date
*/

SELECT ROUND(COUNT(distinct b.player_id)/Count(DISTINCT a.player_id),2) AS fraction
FROM (SELECT player_id, MIN(event_date)As event_date FROM activity
GROUP BY player_id) a
LEFT JOIN Activity b on a.player_id = b.player_id AND DATEDIFF(b.event_date,a.event_date)=1

