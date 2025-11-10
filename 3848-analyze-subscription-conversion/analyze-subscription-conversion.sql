# Write your MySQL query statement below

with cte as(
    select user_id ,
    ROUND(AVG(activity_duration), 2) as trial_avg_duration 
    from UserActivity
    where activity_type = 'free_trial'
    group by user_id 
),
cte1 as(
    select user_id ,
    ROUND(AVG(activity_duration), 2) as paid_avg_duration  
    from UserActivity
    where activity_type = 'paid'
    group by user_id 
)

select 
COALESCE(c.user_id,c1.user_id) AS user_id,
c.trial_avg_duration,
c1.paid_avg_duration
from cte c
join cte1 c1
ON c.user_id = c1.user_id
group by user_id

-- select user_id ,
-- ROUND(AVG(activity_duration), 2)
-- from UserActivity  
-- where activity_type in ('free_trial','paid')
-- group by activity_type ,user_id 