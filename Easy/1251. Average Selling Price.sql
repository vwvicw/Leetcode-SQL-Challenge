/*
select u.product_id,ROUND(SUM(u.units*p.price)/SUM(units),2) AS average_price
from UnitsSold AS u
Left JOIN Prices AS p ON u.product_id = p.product_id 
AND (u.purchase_date <= p.end_date AND u.purchase_date >= p.start_date)
GROUP BY u.product_id
*/


Select p.product_id, COALESCE(ROUND(SUM(units*price)/SUM(units),2),0) As average_price
From Prices AS P
Left JOIN UnitsSold AS u ON u.product_id = p.product_id 
AND (u.purchase_date <= p.end_date AND u.purchase_date >= p.start_date)
#Or we can use BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id

