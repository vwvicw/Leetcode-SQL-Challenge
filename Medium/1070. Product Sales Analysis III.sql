# Write your MySQL query statement below
# First year MIN(year)
/*
SELECT a.product_id,b.first_year, quantity,a.price
FROM Sales a
LEFT JOIN (SELECT product_id, MIN(year) as first_year
FROM Sales GROUP by product_id) as b
ON a.product_id = b.product_id AND a.year = b.first_year
GROUP By a.product_id
*/

SELECT product_id, year AS first_year, quantity, price FROM sales
WHERE (product_id,year) IN
(SELECT product_id, MIn(year) AS year FROM sales GROUP BY product_id)
