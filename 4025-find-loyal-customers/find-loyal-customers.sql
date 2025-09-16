# Write your MySQL query statement below
#DATEDIFF(MAX(transaction_date), MIN(transaction_date)) >= 30
select customer_id
from  customer_transactions
GROUP BY customer_id
HAVING 
count(*)>=3
AND DATEDIFF(MAX(transaction_date), MIN(transaction_date)) >= 30
AND 
SUM(transaction_type = 'refund') / count(*) <0.2;


-- where count(transaction_type) >= 3 AND
-- DATEDIFF(MAX(transaction_date), MIN(transaction_date)) >= 30
-- AND (select customer_id , transaction_id from customer_transactions
-- where count(transaction_type) = 'refund' AND 
-- group by  customer_id
-- )
