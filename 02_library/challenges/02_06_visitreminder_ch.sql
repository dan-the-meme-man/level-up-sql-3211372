-- Prepare a report of the library patrons
-- who have checked out the fewest books.
SELECT COUNT(1) AS Count, Loans.PatronID
FROM Loans
JOIN Patrons ON Loans.PatronID = Patrons.PatronID
GROUP BY Loans.PatronID
ORDER BY Count ASC
LIMIT 5;