# Write your MySQL query statement below
-- select
-- CASE
-- WHEN id = (select max(id) from Seat) and mod(id,2) = 1 THEN id
-- WHEN mod(id,2) = 1 THEN id+1
-- ELSE id-1
-- END AS id,student
-- from Seat
-- order by id ASC




select
CASE 
wHEN id = (select max(id) from seat) and mod(id,2) = 1 THEN id
WHEN mod(id,2) = 1 THEN id+1
ELSE id-1
END as id,student
from seat
order by id ASC