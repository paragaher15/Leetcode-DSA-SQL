

select
employee_id,
CASE
WHEN MOD(employee_id,2) = 1 AND name NOT LIKE 'M%' THEN salary
ELSE 0
END AS bonus
from Employees
order by employee_id;