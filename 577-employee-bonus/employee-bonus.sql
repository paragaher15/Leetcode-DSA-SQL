# Write your MySQL query statement below
SELECT E1.name, B.bonus
FROM Employee E1
LEFT JOIN Bonus B 
    ON E1.empId = B.empId
WHERE B.bonus < 1000 OR B.bonus IS NULL;
