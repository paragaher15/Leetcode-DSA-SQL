select b.*,
MAX(r.session_rating ) - MIN(r.session_rating )as rating_spread,
ROUND(SUM(CASE WHEN r.session_rating >= 4 OR r.session_rating <= 2 THEN 1 ELSE 0 END) * 1.0 / COUNT(*), 2) AS polarization_score
from books b
join reading_sessions r
on b.book_id = r.book_id 
group by b.book_id,b.title,b.author,b.genre
Having count(r.session_id) >= 5 AND  MAX(r.session_rating ) >= 4 AND MIN(r.session_rating ) <= 2 AND (SUM(CASE WHEN r.session_rating >= 4 OR r.session_rating <= 2 THEN 1 ELSE 0 END) * 1.0 / COUNT(*)) >= 0.6
Order by polarization_score DESC,b.title DESC