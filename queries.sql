-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT P.ProductName, C.CategoryName 
FROM Product as P
JOIN Category as C ON c.id = p.CategoryID;
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT O.id, S.CompanyName 
FROM [order] AS O
JOIN [Shipper] AS S ON O.ShipVia = S.id
WHERE O.OrderDate <  '2012-08-09';
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT O.id, P.productName, O.Quantity
FROM OrderDetail O
JOIN [Product] as P ON O.productid = P.id
WHERE O.Orderid = 10251;
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT O.id as 'OrderID', C.CompanyName as 'Company Name', E.LastName as 'Employee Last Name'
FROM [order] as O
JOIN Employee as E ON O.Employeeid = E.id
JOIN Customer as C ON C.id = O.Customerid;