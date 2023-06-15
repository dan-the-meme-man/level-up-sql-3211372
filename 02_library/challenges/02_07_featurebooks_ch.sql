-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.
SELECT * FROM Books
JOIN Loans ON Loans.BookID = Books.BookID
WHERE 1890 <= Published
AND Published <= 1899
AND Loans.ReturnedDate IS NOT NULL;