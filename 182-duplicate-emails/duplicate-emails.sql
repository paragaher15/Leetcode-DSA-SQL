# Write your MySQL query statement below
-- SELECT email AS Email
-- from Person
-- GROUP BY email
-- Having count(*) > 1;
select email as Email
from person
group by email
HAVING COUNT(*) > 1