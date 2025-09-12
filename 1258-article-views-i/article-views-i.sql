-- # Write your MySQL query statement below
-- select DISTINCT Views.author_id as id
-- from Views
-- inner join Views v
-- on 
-- Views.author_id = v.viewer_id 
-- order by id 


-- select author_id as id 
-- from (
--     select 
-- )

select Distinct author_id as id
from views 
where author_id = viewer_id
order by author_id 