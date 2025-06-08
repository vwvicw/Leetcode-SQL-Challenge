# Write your MySQL query statement below
select Distinct(author_id) as "id"
from Views
where author_id = viewer_id
Order by author_id ASC

/* Note:
1. Distinct() to filter unique id
2. Order by to sort the result
*/
