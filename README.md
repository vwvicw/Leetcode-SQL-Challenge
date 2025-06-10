# Leetcode-SQL-Challenge

This repo contains all my answers & study notes to the SQL challenges on Leetcode.com, aiming to improve my SQL skills.


# Quick Notes
1. Finding even or odd numbers: use %2. Use case: weekdays, days.
2. we can normally use AVG() for rate calculation(subscription rate, success rate etc.)if 0 or 1(true or false) binary values have been assigned, otherwise, we would need to use CASE() or "round(avg(if(c.action="confirmed",1,0)),2)" to assign values first then calculate the AVG() in AVG(action = 'confirmation') calculation, this would return true or false which will be regarded as 0 or 1 autoamtically. Hence, this could be a shortcut
3. Be causiou when it comes to manipulating the date with DATE_ADD() or DATE_SUB - for example, DATE_ADD('2025-01-01', INTERVAL 10 Days) returns 2025-01-11 which is 11 days in total instead of 10 days
BETWEEN.. is always inclusive
