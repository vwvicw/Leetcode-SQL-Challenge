# Write your MySQL query statement below
select p.product_name, s.year, s.price
from Product p JOIN SALES s on p.product_id = s.product_id
