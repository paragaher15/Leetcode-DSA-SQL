# Write your MySQL query statement below
 select Project.project_id, 
 ROUND(
       sum(Employee.experience_years) / count(Project.employee_id),
        2
    ) AS average_years
from Project 
left join Employee on
Project.employee_id  = Employee.employee_id 
group by Project.project_id
