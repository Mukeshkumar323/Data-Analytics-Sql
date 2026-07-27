select * from customers1;
Select * from products1 where price>500;
Select * from product1s order by price desc;
DROP TABLE IF EXISTS orders;
use ecommerce;
SELECT CustomerID,
SUM(Quantity) AS TotalQuantity
FROM Orders
GROUP BY CustomerID;
SELECT Customers1.CustomerName,
Products1.ProductName,
Orders.Quantity
FROM Orders
INNER JOIN Customers1
ON Orders.CustomerID = Customers1.CustomerID
INNER JOIN Products1
ON Orders.ProductID = Products1.ProductID;
SELECT Customers1.CustomerName,
Orders.OrderID
FROM Customers1
LEFT JOIN Orders
ON Customers1.CustomerID = Orders.CustomerID;
SELECT Customers1.CustomerName,
Orders.OrderID
FROM Customers1
RIGHT JOIN Orders
ON Customers1.CustomerID = Orders.CustomerID;
SELECT ProductName
FROM Products1
WHERE Price >
(
SELECT AVG(Price)
FROM Products
);
SELECT
SUM(Quantity) AS TotalSold,
AVG(Quantity) AS AverageSold
FROM Orders;
CREATE VIEW Sales_View AS
SELECT Customers1.CustomerName,
Products1.ProductName,
Orders.Quantity
FROM Orders
JOIN Customers1
ON Orders.CustomerID = Customers1.CustomerID
JOIN Products1
ON Orders.ProductID = Products1.ProductID;
CREATE INDEX idx_customer
ON Orders(CustomerID);
CREATE VIEW Sales3_View AS
SELECT Customers1.CustomerName,
Products1.ProductName,
Orders.Quantity
FROM Orders
JOIN Customers1
ON Orders.CustomerID = Customers1.CustomerID
JOIN Products1
ON Orders.ProductID = Products1.ProductID;
SELECT * FROM Sales3_View;
CREATE INDEX idx_customer
ON Orders(CustomerID);
