-- Question 1 --
-- Create a new normalized table in 1NF
SELECT OrderID, CustomerName, 'Laptop' AS Product 
INTO OrderProducts_1NF
FROM ProductDetail WHERE Products LIKE '%Laptop%'
UNION ALL
SELECT OrderID, CustomerName, 'Mouse' AS Product 
FROM ProductDetail WHERE Products LIKE '%Mouse%'
UNION ALL
SELECT OrderID, CustomerName, 'Tablet' AS Product 
FROM ProductDetail WHERE Products LIKE '%Tablet%'
UNION ALL
SELECT OrderID, CustomerName, 'Keyboard' AS Product 
FROM ProductDetail WHERE Products LIKE '%Keyboard%'
UNION ALL
SELECT OrderID, CustomerName, 'Phone' AS Product 
FROM ProductDetail WHERE Products LIKE '%Phone%';

-- Question 2 --
-- Create Orders table (contains order information)
SELECT DISTINCT OrderID, CustomerName
INTO Orders_2NF
FROM OrderDetails;

-- Create OrderItems table (contains product information per order)
SELECT OrderID, Product, Quantity
INTO OrderItems_2NF
FROM OrderDetails;


