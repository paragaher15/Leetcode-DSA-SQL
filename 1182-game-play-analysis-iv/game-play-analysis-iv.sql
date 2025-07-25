# Write your MySQL query statement below DATEDIFF(date1, date2)

SELECT 
  ROUND(SUM(m1) / COUNT(DISTINCT player_id), 2) AS fraction
FROM (
  SELECT 
    player_id,
    DATEDIFF(event_date, MIN(event_date) OVER (PARTITION BY player_id)) = 1 AS m1
  FROM Activity
) AS sub;
