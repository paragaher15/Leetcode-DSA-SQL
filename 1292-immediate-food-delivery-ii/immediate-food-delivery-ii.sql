# Write your MySQL query statement below
select 
Round(sum(if(M1 = M2 ,1 ,0)*100)/count(M1),2)
as immediate_percentage 
from
(select delivery_id,
customer_id,
min(order_date) as M1,
min(customer_pref_delivery_date) as M2
from Delivery 
group by customer_id) as new_table

