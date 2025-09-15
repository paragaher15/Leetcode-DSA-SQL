# Write your MySQL query statement below
select ROUND(SUM(tiv_2016),2) AS tiv_2016 
from Insurance
where tiv_2015 in(
    select tiv_2015 from Insurance 
    GROUP BY tiv_2015
    HAVING count(*) > 1
) AND (lat,lon) IN (
    select lat,lon from Insurance
    group by lat,lon
    HAVING count(*) = 1
);