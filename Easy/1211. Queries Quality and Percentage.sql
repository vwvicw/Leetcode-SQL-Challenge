#Quality = AVG(rating/position)
#Poor query percentage COUNT(rating <3)/total
#Round(,2)
#poor_query_percentage

Select query_name, ROUND(AVG(rating/position),2) AS quality, ROUND(AVG(CASE WHEN rating < 3 THEN 1 ELSE 0 END)*100,2) AS poor_query_percentage
From Queries
GROUP BY query_name



