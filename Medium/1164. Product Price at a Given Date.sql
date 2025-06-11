# Write your MySQL query statement below


 
/* with cte as(
select product_id, new_price as price from (
    select *, row_number() over(partition by product_id order by change_date DESC) as "rank"
    from products
    where change_date <= '2019-08-16'
) temp 
where temp.rank = 1)

select distinct(p.product_id), ifnull(c.price, 10) as price from products as p 
left join cte as c on p.product_id = c.product_id
*/


# null value = 10

SELECT DISTINCT Products.product_id, COALESCE(latest_prices.new_price,10) AS price
FROM Products
LEFT JOIN 

(SELECT product_id, new_price FROM Products
WHERE (product_id, change_date) IN
    (SELECT product_id,Max(change_date) as change_date FROM Products
    WHERE change_date <= '2019-08-16'
    GROUP BY product_id)) latest_prices

ON Products.product_id = latest_prices.product_id
