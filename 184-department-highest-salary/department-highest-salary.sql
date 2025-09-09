-- # Write your MySQL query statement below
-- select D.name as Department ,E.name as Employee,E.salary 
-- from Employee E
-- join Department D on
-- E.departmentId = D.id
-- WHERE E.salary = (
--     SELECT MAX(salary)
--     FROM Employee
--     WHERE departmentId = E.departmentId
-- );

SELECT Department, Employee, salary
FROM (
    SELECT 
        D.name AS Department,
        E.name AS Employee,
        E.salary,
        RANK() OVER (PARTITION BY E.departmentId ORDER BY E.salary DESC) AS rn
    FROM Employee E
    JOIN Department D 
        ON E.departmentId = D.id
) temp
WHERE rn = 1;
