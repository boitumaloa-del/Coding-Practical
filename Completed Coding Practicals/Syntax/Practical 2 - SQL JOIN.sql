--1. INNER JOIN: Orders with Customer and Product Names
--Question: List all orders along with the customer name and product name.
--Expected Output Columns:
--OrderID, OrderDate, CustomerName, ProductName, Quantity
--------------------------------------------------------------------------------------------------------
SELECT 
    o.OrderID, 
    o.OrderDate, 
    c.CustomerName, 
    p.ProductName, 
    o.Quantity
FROM orders o
INNER JOIN customers c ON o.CustomerID = c.CustomerID
INNER JOIN products p ON o.ProductID = p.ProductID;
--------------------------------------------------------------------------------------------------------
--2. INNER JOIN: Customers Who Placed Orders
--Question: Which customers have placed at least one order?
--Expected Output Columns:
--CustomerID, CustomerName, Country, OrderID, OrderDate
SELECT 
    c.CustomerID, 
    c.CustomerName, 
    c.Country, 
    o.OrderID, 
    o.OrderDate
FROM customers c
INNER JOIN orders o ON c.CustomerID = o.CustomerID;
--------------------------------------------------------------------------------------------------------
--3. LEFT JOIN: All Customers and Their Orders
--Question: List all customers and any orders they might have placed. Include customers who have not placed any orders.
--Expected Output Columns:
--CustomerID, CustomerName, Country, OrderID, OrderDate, ProductID, Quantity

SELECT 
    c.CustomerID, 
    c.CustomerName, 
    c.Country, 
    o.OrderID, 
    o.OrderDate, 
    o.ProductID, 
    o.Quantity
FROM customers c
LEFT JOIN orders o ON c.CustomerID = o.CustomerID;
--------------------------------------------------------------------------------------------------------
--4. LEFT JOIN: Product Order Count
--Question: List all products and how many times each was ordered (if any).
--Expected Output Columns:
--ProductID, ProductName, TotalOrders (TotalOrders is the count of how many times the product appears in orders)

SELECT 
    p.ProductID, 
    p.ProductName, 
    COUNT(o.OrderID) AS TotalOrders
FROM products p
LEFT JOIN orders o ON p.ProductID = o.ProductID
GROUP BY p.ProductID, p.ProductName;

--------------------------------------------------------------------------------------------------------
--5. RIGHT JOIN: Orders with Product Info (Include Products Not Ordered)
--Question: Find all orders along with product details, including any products that might not have been ordered.
--Expected Output Columns:
--OrderID, OrderDate, ProductID, ProductName, Price, Quantity

SELECT 
    o.OrderID, 
    o.OrderDate, 
    p.ProductID, 
    p.ProductName, 
    p.Price, 
    o.Quantity
FROM orders o
RIGHT JOIN products p ON o.ProductID = p.ProductID;
--------------------------------------------------------------------------------------------------------
--6. RIGHT JOIN: Customer Info with Orders (Include All Customers)
--Question: Which customers have made orders, and include customers even if they have never placed an order.
--Expected Output Columns:
--CustomerID, CustomerName, Country, OrderID, OrderDate, ProductID, Quantity

SELECT 
    c.CustomerID, 
    c.CustomerName, 
    c.Country, 
    o.OrderID, 
    o.OrderDate, 
    o.ProductID, 
    o.Quantity
FROM orders o
RIGHT JOIN customers c ON o.CustomerID = c.CustomerID;
---------------------------------------------------------------------------------------------------------7. FULL OUTER JOIN: All 7. 7.Customers and All Orders
--Question: List all customers and orders, showing NULLs where customers have not ordered or where orders have no customer info.
--Expected Output Columns:
--CustomerID, CustomerName, Country, OrderID, OrderDate, ProductID, Quantity

SELECT 
    c.CustomerID, 
    c.CustomerName, 
    c.Country, 
    o.OrderID, 
    o.OrderDate, 
    o.ProductID, 
    o.Quantity
FROM customers c
LEFT JOIN orders o ON c.CustomerID = o.CustomerID

UNION

SELECT 
    c.CustomerID, 
    c.CustomerName, 
    c.Country, 
    o.OrderID, 
    o.OrderDate, 
    o.ProductID, 
    o.Quantity
FROM orders o
LEFT JOIN customers c ON o.CustomerID = c.CustomerID
WHERE c.CustomerID IS NULL;

------------------------------------------------------------------------------------------------------------------------------
--8. FULL OUTER JOIN: All Products and Orders
--Question: List all products and orders, showing NULLs where products were never ordered or orders are missing product info.
--Expected Output Columns:
--ProductID, ProductName, Price, OrderID, OrderDate, CustomerID, Quantity

SELECT 
    p.ProductID, 
    p.ProductName, 
    p.Price, 
    o.OrderID, 
    o.OrderDate, 
    o.CustomerID, 
    o.Quantity
FROM products p
LEFT JOIN orders o ON p.ProductID = o.ProductID

UNION

SELECT 
    p.ProductID, 
    p.ProductName, 
    p.Price, 
    o.OrderID, 
    o.OrderDate, 
    o.CustomerID, 
    o.Quantity
FROM orders o
LEFT JOIN products p ON o.ProductID = p.ProductID
WHERE p.ProductID IS NULL;







  