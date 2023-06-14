-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.
SELECT
  (SELECT COUNT() FROM Books
   WHERE Title = 'Dracula')
  
  -

  (SELECT COUNT() FROM Loans
   WHERE BookID IN (SELECT BookID FROM Books WHERE Title = 'Dracula')
   AND ReturnedDate IS NULL)
   
  AS AvailableCopies;