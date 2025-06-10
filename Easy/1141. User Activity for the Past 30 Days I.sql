# Write your MySQL query statement below
# DATEADD('2019-07-27',-30)
# BETWEEN DATEADD('2019-07-27',-30)
# The tricky part of this question is that the question asks for the result within a 30 days range, if we simply do Date_Add(-30)days, it will actually count an extra day before the requested range whic returns the wrong answer.

SELECT activity_date AS day, COUNT(DISTINCT(user_id)) as active_users
FROM Activity
WHERE activity_date BETWEEN  DATE_ADD('2019-07-27', INTERVAL -29 DAY) AND '2019-07-27'
GROUP BY activity_date
ORDER BY activity_date
