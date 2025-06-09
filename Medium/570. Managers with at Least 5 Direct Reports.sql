/* when counting the existence of certain value, Group by is the first shortcut we should think
 Having() Filters grouped rows: The HAVING clause filters groups of rows after they have been aggregated using the GROUP BY clause.
*/

Select Name
From employee 
Where id =(
    SELECT ManagerId From Employee
    Group by ManagerId
    Having(Count(Distinct id)>=5))
