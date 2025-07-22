# Write your MySQL query statement below
SELECT 
DATE_FORMAT(trans_date, '%Y-%m') as month,
country,
count(state) as trans_count ,
COUNT(IF(state = 'approved', 1, NULL)) AS approved_count,
sum(amount )as trans_total_amount ,
SUM(IF(state = 'approved', amount, 0)) AS approved_total_amount
from  Transactions 
group by month ,country;   
