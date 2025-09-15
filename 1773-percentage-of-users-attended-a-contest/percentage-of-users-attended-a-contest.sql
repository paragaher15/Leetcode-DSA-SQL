# Write your MySQL query statement below
select Register.contest_id,
ROUND(count(DISTINCT Register.user_id)*100 /(select count(*) from Users),2) as percentage 
from Register 
join Users 
on Register .user_id = Users .user_id 
Group by Register.contest_id
order by  percentage DESC,Register.contest_id ASC