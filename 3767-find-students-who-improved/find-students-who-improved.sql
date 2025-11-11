# Write your MySQL query statement below
-- select s.student_id,
-- s.subject,
-- s.score as first_score ,
-- s1.score as latest_score
-- from Scores S
-- join Scores s1
-- on s.student_id = s1.student_id AND s.subject = s1.subject AND s.exam_date < s1. exam_date 
-- where s.score < s1.score   
-- order by  s.student_id ,s.subject ASC;




-- SELECT 
--     s.student_id,
--     s.subject,
--     s.score AS first_score,
--     s1.score AS latest_score
-- FROM Scores s
-- JOIN Scores s1
--     ON s.student_id = s1.student_id 
--     AND s.subject = s1.subject
--     AND s.exam_date < s1.exam_date   -- ensure first exam is before latest
-- WHERE s.score < s1.score            -- improved score
-- ORDER BY s.student_id, s.subject;


-- SELECT 
--     s.student_id,
--     s.subject,
--     MIN(s.score) AS first_score,
--     MAX(s1.score) AS latest_score
-- FROM Scores s
-- JOIN Scores s1
--     ON s.student_id = s1.student_id
--     AND s.subject = s1.subject
--     AND s.exam_date < s1.exam_date      -- ensure earlier vs later exam
-- GROUP BY s.student_id, s.subject
-- HAVING first_score < latest_score       -- improved
-- ORDER BY s.student_id, s.subject;


WITH Ranked AS (
    SELECT
    student_id,
    subject,
    FIRST_VALUE(score) OVER(PARTITION BY student_id,subject ORDER BY exam_date) AS first_score,
    FIRST_VALUE(score) OVER(PARTITION BY student_id,subject ORDER BY exam_date DESC) AS latest_score
    FROM Scores
)
SELECT DISTINCT * FROM Ranked
WHERE first_score<latest_score
ORDER BY student_id,subject