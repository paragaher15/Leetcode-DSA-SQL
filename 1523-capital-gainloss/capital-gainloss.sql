# Write your MySQL query statement below
select stock_name,
 SUM(
        CASE 
            WHEN operation = 'Buy'  THEN -price
            WHEN operation = 'Sell' THEN  price
        END
    ) AS capital_gain_loss
from Stocks
group by stock_name