# Write your MySQL query statement below
-- SELECT s.name
-- FROM SalesPerson s
-- WHERE s.sales_id NOT IN (
--     SELECT o.sales_id
--     FROM Orders o
--     JOIN Company c ON o.com_id = c.com_id
--     WHERE c.name = 'Red'
-- );


select s.name from  SalesPerson s
where s.sales_id NOT IN (
    select o.sales_id from Orders o
    join Company c on
    o.com_id = c.com_id
    where c.name = 'RED'
);
