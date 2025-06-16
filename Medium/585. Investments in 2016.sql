# Write your MySQL query statement below
# ROUND()
# tiv_2015 <> tiv_2016
# lat<>   lon<>

SELECT ROUND(SUM(tiv_2016),2) AS tiv_2016
FROM Insurance
WHERE tiv_2015 IN 
    (SELECT tiv_2015 FROM insurance GROUP BY tiv_2015 HAVING COUNT(*) >1)
AND (lat,lon) IN 
    (SELECT lat, lon FROM Insurance GROUP BY lat, lon HAVING COUNT(*)=1)





/*
select round(sum(tiv_2016),2) as tiv_2016 from insurance 
where tiv_2015 in (
    select tiv_2015 from insurance
    group by 1
    having count(tiv_2015)>1
) and concat(lat,' ',lon) not in (
    select concat(lat,' ',lon) from insurance
    group by 1
    having count(concat(lat,' ',lon))>1
)
*/
