/* Write your MySQL query statement below
select customer_id, COUNT(DISTINCT(Visits.visit_id)) AS count_no_trans
from Visits
WHERE visit_id NOT IN (
    SELECT visit_id From Transactions
)
GROUP BY customer_id

Searching through the list of ids and find the ones that do not exist in the other table could be done by a sub-query
*/

#Second Solutions
select customer_id, COUNT(DISTINCT(Visits.visit_id)) AS count_no_trans
FROM Visits left join Transactions on Visits.visit_id = Transactions.visit_id
WHERE transaction_id IS NULL
GROUP BY customer_id

