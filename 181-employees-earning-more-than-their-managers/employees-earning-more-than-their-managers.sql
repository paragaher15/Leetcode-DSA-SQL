# Write your MySQL query statement below
-- SELECT E.name AS Employee
-- FROM Employee E
-- RIGHT JOIN Employee E1
--        ON E.managerId = E1.id
-- WHERE E.salary > E1.salary
-- GROUP BY E.name;

-- SELECT e.name AS Employee
-- FROM Employee e
-- JOIN Employee m
--   ON e.managerId = m.id          -- match each employee to their manager
-- WHERE e.salary > m.salary; 

select e.name as Employee 
from Employee e
inner join Employee e1
on e.managerId = e1.id
where e.salary > e1.salary;