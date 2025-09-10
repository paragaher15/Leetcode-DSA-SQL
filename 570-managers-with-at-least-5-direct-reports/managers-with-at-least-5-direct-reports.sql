# Write your MySQL query statement below
select E1.name
from Employee E1
join Employee E2 on
E1.id = E2.managerId
Group by E1.id
HAVING COUNT(E2.id) >= 5

