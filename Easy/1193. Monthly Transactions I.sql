#Count()
#Case()
#
SELECT LEFT(trans_date,7) AS month, country, 
COUNT(id) as trans_count,
COUNT(CASE WHEN state = 'approved' THEN id END) AS approved_count,
#SUM(state = 'approved')
SUM(amount) as trans_total_amount,
SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) as approved_total_amount
FROM Transactions
GROUP by 1, 2
