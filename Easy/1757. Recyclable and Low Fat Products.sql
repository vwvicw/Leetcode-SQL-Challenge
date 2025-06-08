# Select p.product_id
# FROM Products AS p
# WHERE p.low_fats = 'Y' AND p.recyclable='Y'

Select product_id
FROM Products
WHERE low_fats = TRUE AND recyclable = TRUE
