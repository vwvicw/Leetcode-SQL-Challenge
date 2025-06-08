# Write your MySQL query statement below
/*
In a situation which asking to compare one value with the other value, self-join is probably the first choice. In this case, we can align the previous date and the current date

DATEDIFF()
*/

select w2.id
from Weather w1 JOIN Weather w2 ON DATEDIFF(w1.recordDate,w2.recordDate)=-1
/*
This would give us following table, and next we can just compare the temperature
| id | recordDate | temperature | id | recordDate | temperature |
| -- | ---------- | ----------- | -- | ---------- | ----------- |
| 1  | 2015-01-01 | 10          | 2  | 2015-01-02 | 25          |
| 2  | 2015-01-02 | 25          | 3  | 2015-01-03 | 20          |
| 3  | 2015-01-03 | 20          | 4  | 2015-01-04 | 30          |
*/
WHERE w1.temperature < w2.temperature


/*
Option 2:
LAG (scalar_expression [, offset [, default ]])     OVER ( [ partition_by_clause ] order_by_clause )

Key Terms

scalar_expression - The value to be returned based on the specified offset.
offset - The number of rows back from the current row from which to obtain a value. If not specified, the default is 1.
default - default is the value to be returned if offset goes beyond the scope of the partition. If a default value is not specified, NULL is returned.
partition_by_clause: An optional clause that divides the result set into partitions. The LAG() function is applied to each partition separately.
order_by_clause: The order of the rows within each partition. This is mandatory and must be specified
*/
