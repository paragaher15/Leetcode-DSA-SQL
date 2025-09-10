# Write your MySQL query statement below
-- select c.name
-- from Customer c
-- left  join customer c1
-- on c.id = c1.referee_id
-- where c1.referee_id != 2 OR c1.referee_id IS NULL;

select name from customer where 
referee_id != 2 OR referee_id IS NULL;