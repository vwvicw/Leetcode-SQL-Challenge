# Leetcode-SQL-Challenge

This repo contains all my answers & study notes to the SQL challenges on Leetcode.com, aiming to improve my SQL skills.


# Quick Notes
1. Finding even or odd numbers: use %2. Use case: weekdays, days.
2. calculate the average rate, we can normally use AVG() if 0 or 1 binary values have been assigned, otherwise, we would need to use CASE() or "round(avg(if(c.action="confirmed",1,0)),2)" to assign values first then calculate the AVG() in AVG(action = 'confirmation') calculation, this would return true or false which will be regarded as 0 or 1 autoamtically. Hence, this could be a shortcut
