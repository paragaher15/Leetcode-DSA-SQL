SELECT
    lb.book_id,
    lb.title,
    lb.author,
    lb.genre,
    lb.publication_year,
    COUNT(br.record_id) AS current_borrowers
FROM library_books AS lb
LEFT JOIN borrowing_records AS br
       ON lb.book_id = br.book_id
      AND br.return_date IS NULL          -- only count active borrowings
GROUP BY
    lb.book_id, lb.title, lb.author,
    lb.genre, lb.publication_year, lb.total_copies
HAVING
    COUNT(br.record_id) = lb.total_copies -- all copies are out
ORDER BY
    current_borrowers DESC,
    lb.title ASC;
