-- SELECT 
--     score, 
--     DENSE_RANK() OVER (ORDER BY score DESC) AS 'rank'
-- FROM Scores
-- ORDER BY score DESC;
select score,
 DENSE_RANK() OVER (ORDER BY Score DESC) As 'rank'
FROM Scores
ORDER BY score DESC;