# Write your MySQL query statement below

# COUNT
/*
SELECT DISTINCT(salary_category), COUNT(account_id) as accounts_count
FROM(
SELECT account_id, income, 
       CASE 
         WHEN income < 10000 THEN 'Low Salary'
         WHEN income >= 10000 AND income <= 50000 THEN 'Average Salary'
         WHEN income > 50000 THEN 'High Salary'
       END AS salary_category
FROM Accounts
) AS categorized_accounts
GROUP BY salary_category
*/

(select
'Low Salary' as category,
count(account_id) as accounts_count
from Accounts where income < 20000)
union all
(select
'Average Salary' as category,
count(account_id) as accounts_count
from Accounts where income >= 20000 and income <= 50000
)
union all
(select
'High Salary' as category,
count(account_id) as accounts_count
from Accounts where income > 50000)
