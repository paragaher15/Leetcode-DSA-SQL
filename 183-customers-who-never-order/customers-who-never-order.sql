SELECT name as Customers
from  Customers 
where id NOT IN(
    select customerId from orders
);



-- SELECT name as Customers 
-- FROM Customers
-- WHERE id NOT IN (
--     SELECT customerId
--     FROM Orders
-- );
