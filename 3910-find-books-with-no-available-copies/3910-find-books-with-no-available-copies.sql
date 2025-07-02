# Write your MySQL query statement below
SELECT lib.book_id, lib.title , lib.author, lib.genre, lib.publication_year, total_copies AS current_borrowers
FROM library_books lib
JOIN borrowing_records borrow ON lib.book_id = borrow.book_id
WHERE borrow_date is NOT NULL AND return_date IS NULL
GROUP BY book_id
HAVING COUNT(*) = total_copies
ORDER BY current_borrowers DESC, title