-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.
SELECT COUNT(DISTINCT Title) AS Count, Published FROM Books
GROUP BY Published
ORDER BY Count DESC;

SELECT COUNT(Loans.BookID) AS Count, Books.Title FROM Loans
JOIN Books on Loans.BookID = Books.BookID
GROUP BY Books.Title
ORDER BY Count DESC
LIMIT 5;