
#440ms (faster)
SELECT name as Customers FROM Customers
WHERE id NOT IN (SELECT customerID FROM Orders) ;

SELECT name as Customers FROM Customers as c
LEFT JOIN Orders as o ON o.customerID=c.id
WHERE o.customerID IS NULL;