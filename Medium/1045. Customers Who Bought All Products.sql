# Write your MySQL query statement below
# All the product product_key 

SELECT customer_id
FROM Customer c
GROUP BY customer_id
HAVING COUNT(DISTINCT c.product_key)= (SELECT COUNT(DISTINCT product_key)FROM Product)
