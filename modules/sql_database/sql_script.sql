-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100),
    Phone NVARCHAR(15),
    Addr NVARCHAR(255)
);
GO

-- Create Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(100),
    Price DECIMAL(10, 2)
);
GO

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    OrderDate DATE,
    Quantity INT,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
GO

-- Create a View to join Customers and Orders
CREATE VIEW CustomerOrdersView AS
SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    o.OrderID,
    o.OrderDate,
    o.Quantity,
    o.TotalAmount
FROM
    Customers c
INNER JOIN
    Orders o ON c.CustomerID = o.CustomerID;
GO

-- Create stored procedure to add a new customer
CREATE PROCEDURE AddCustomer
    @FirstName NVARCHAR(50),
    @LastName NVARCHAR(50),
    @Email NVARCHAR(100),
    @Phone NVARCHAR(15)
AS
BEGIN
    INSERT INTO Customers (FirstName, LastName, Email, Phone)
    VALUES (@FirstName, @LastName, @Email, @Phone);
END;
GO

-- Create stored procedure to get orders by customer ID
CREATE PROCEDURE GetOrdersByCustomerID
    @CustomerID INT
AS
BEGIN
    SELECT 
        o.OrderID,
        o.ProductID,
        o.OrderDate,
        o.Quantity,
        o.TotalAmount
    FROM 
        Orders o
    WHERE 
        o.CustomerID = @CustomerID;
END;
GO
