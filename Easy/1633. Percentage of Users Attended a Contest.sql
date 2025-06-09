#Percentage of Users: AVG(true,false) maybe?
#ROUND()
#ORDER BY()
Select contest_id, ROUND((COUNT(r.user_id)/ (SELECT COUNT(user_id) FROM Users))*100,2) AS percentage
FROM Register r
JOIN Users u ON r.user_id = u.user_id
GROUP BY contest_id
ORDER BY percentage DESC,contest_id ASC
