# Write your MySQL query statement below
/* Simple Solution
select name
from Customer
where referee_id != 2 OR referee_id IS NULL
*/

/* Note:
1. Comparisons with NULL: You cannot use standard comparison operators like =, <, or > to test for NULL values. Instead, you use the IS NULL or IS NOT NULL predicates
2. Handling NULL values: SQL provides functions like ISNULL() (in SQL Server) or IFNULL() (in MySQL) and COALESCE() to handle NULL values, allowing to replace them with a specified value # or to return the first non-null expression in a list 
3. COALESCE() function returns the first non-null value in a list, this function takes all the null value and assign it to a specific value which was put as the second parameter
4. IFNULL() does the same thing as COALESCE()
*/

#Alternative Solution
select name
from Customer
where COALESCE(referee_id,0)!=2




