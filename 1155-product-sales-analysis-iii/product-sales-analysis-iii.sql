# Write your MySQL query statement below
-- select  product_id, min(year) as first_year ,quantity,price
-- from Sales
-- group by product_id


select product_id,
year as first_year,quantity,price
from sales
where
((product_id,year) IN (select product_id,min(year) from Sales group by product_id))