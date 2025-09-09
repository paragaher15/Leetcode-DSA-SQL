# Write your MySQL query statement below
SELECT email AS Email
from Person
GROUP BY email
Having count(*) > 1;
