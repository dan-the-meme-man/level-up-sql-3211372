-- Update a customer's contact information.

-- Taylor Jenkins, of 27170 6th Ave., Washington, DC,
-- has moved to 74 Pine St., New York, NY.
SELECT * FROM Customers
WHERE FirstName = 'Taylor'
AND LastName = 'Jenkins'
AND City = 'Washington'
;

UPDATE Customers
SET
  Address = '74 Pine Street',
  City = 'New York',
  State = 'NY'
WHERE CustomerID = 26;

SELECT * FROM Customers
WHERE FirstName = 'Taylor'
AND LastName = 'Jenkins'
;