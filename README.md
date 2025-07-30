# Leetcode-SQL-Challenge

This repo contains all my answers & study notes to the SQL challenges on Leetcode.com, aiming to improve my SQL skills.


# Quick Notes
1. Finding even or odd numbers: use %2. Use case: weekdays, days.
2. US AVG() for rate calculation(subscription rate, success rate etc.)if 0 or 1(true or false) binary values have been assigned, otherwise, we would need to use CASE() or "round(avg(if(c.action="confirmed",1,0)),2)" to assign values first then calculate the AVG() in AVG(action = 'confirmation') calculation, this would return true or false which will be regarded as 0 or 1 autoamtically. Hence, this could be a shortcut
3. Be causiou when it comes to manipulating the date with DATE_ADD() or DATE_SUB - for example, DATE_ADD('2025-01-01', INTERVAL 10 Days) returns 2025-01-11 which is 11 days in total instead of 10 days
BETWEEN.. is always inclusive
4. GROUP BY 1 is a shorthand notation that means "group the result set by the first column listed in the SELECT clause
5. Consecutive Questions: **lead()+lag()** or** self-join** and join based on id/orders (LC 180)
6. Summing up values until certain points: **self-join**  (LC 1204) OR  WINDOW function
7. Limit n gives the first n values
8. DENSE_RANK() allows tie compares to RANK()
9. Use case of SUM()OVER(): a) Calculating running totals/cumulative sums: Tracking the cumulative sum of a value over time or within categories. b)Calculating sums for each group while retaining individual row details: Seeing the individual contribution of each record alongside the total for its group. c)Performing analytical calculations on subsets of data: Understanding trends, identifying top N per group, or comparing individual values to group aggregates without losing granularity
