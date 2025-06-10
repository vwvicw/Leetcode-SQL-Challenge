# CTE maybe?
# immediate order if order_date = customer_pref_delivery_date
# first order MIN(order_date)
# immediate_percentage = number of customer who has immediate order / total first order customer
# Round()
WITH cte_customer_firstorder AS (
    SELECT customer_id, MIN(order_date) as first_order_date
    FROM Delivery
    Group by customer_id
)


SELECT Round(SUM(CASE WHEN first_order_date = customer_pref_delivery_date THEN 1 ELSE 0 END)/COUNT(a.customer_id)*100,2) AS immediate_percentage
FROM cte_customer_firstorder a
LEFT JOIN Delivery b ON a.customer_id = b.customer_id AND a.first_order_date = b.order_date 



