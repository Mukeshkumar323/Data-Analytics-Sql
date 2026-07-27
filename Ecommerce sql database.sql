use Ecommerce;
CREATE TABLE Customers1 (
    CustomerID VARCHAR(10),
    CustomerName VARCHAR(100),
    Gender VARCHAR(10),
    City VARCHAR(50),
    State VARCHAR(50)
);
INSERT INTO customers1 (CustomerID, CustomerName, Gender, City, State)
VALUES
('C001', 'Rahul Sharma', 'Male', 'Bangalore', 'Karnataka'),
('C002', 'Priya Singh', 'Female', 'Chennai', 'Tamil Nadu'),
('C003', 'Arjun Kumar', 'Male', 'Hyderabad', 'Telangana'),
('C004', 'Sneha Reddy', 'Female', 'Pune', 'Maharashtra'),
('C005', 'Kiran Patel', 'Male', 'Ahmedabad', 'Gujarat');
select *from customers1 ;
USE ecommerce;

CREATE TABLE products1 (
    ProductID VARCHAR(10) ,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);
INSERT INTO products1 (ProductID, ProductName, Category, Price)
VALUES
('P101', 'Laptop', 'Electronics', 55000.00),
('P102', 'Smartphone', 'Electronics', 25000.00),
('P103', 'Headphones', 'Accessories', 1500.00),
('P104', 'Office Chair', 'Furniture', 8000.00),
('P105', 'Backpack', 'Bags', 1200.00);
Select * from products1 ;
Select * from products1 where price>500;
Select * from product1s order by price desc;
DROP TABLE IF EXISTS orders;
use ecommerce;
CREATE TABLE orders (
    OrderID VARCHAR(10) PRIMARY KEY,
    CustomerID VARCHAR(10),
    ProductID VARCHAR(10),
    Quantity INT,
    OrderDate DATE
);
INSERT INTO orders
(OrderID, CustomerID, ProductID, Quantity, OrderDate)
VALUES
('O1001','C001','P101',1,'2026-01-10'),
('O1002','C002','P102',2,'2026-01-11'),
('O1003','C003','P103',3,'2026-01-12'),
('O1004','C004','P104',1,'2026-01-13'),
('O1005','C005','P105',4,'2026-01-14');
select * from orders;