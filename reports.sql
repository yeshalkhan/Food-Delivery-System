-- Branch-wise Revenue Report 2023
SELECT Branch.BranchID, Branch.BranchName, Restaurant.RestName, NVL(SUM(ItemSize.ItemPrice * 
OrderDetails.ItemQuantity), 0) AS BranchRevenue FROM Branch JOIN Restaurant ON Branch.RestID = 
Restaurant.RestID JOIN Item ON Branch.BranchID = Item.BranchID JOIN OrderDetails ON Item.ItemID = 
OrderDetails.ItemID JOIN ItemSize ON OrderDetails.ItemID = ItemSize.ItemID and 
OrderDetails.ordereditemsize=ItemSize.itemsize JOIN Order ON OrderDetails.OrderID = Order.OrderID 
WHERE TO_CHAR(Order.OrderDate, 'YYYY') = '2023' GROUP BY Branch.BranchID, Branch.BranchName, 
Restaurant.RestName ORDER BY BranchRevenue DESC;

-- Rider Performance Report
SELECT Rider.RiderID, Rider.RiderName, COUNT(Orders.OrderID) AS TotalDeliveries
FROM Rider
JOIN Orders ON Rider.RiderID = Orders.RiderID
WHERE Orders.OrderStatus = 'DELIVERED'
GROUP BY Rider.RiderID, Rider.RiderName
ORDER BY TotalDeliveries DESC;

-- Most Ordered Items Report
SELECT * FROM ( SELECT Item.ItemName, Branch.BranchName, Restaurant.RestName,
 SUM(OrderDetails.ItemQuantity) AS TotalQuantityOrdered FROM OrderDetails
 JOIN Item ON OrderDetails.ItemID = Item.ItemID
 JOIN Branch ON Item.BranchID = Branch.BranchID JOIN Restaurant ON Branch.RestID = 
Restaurant.RestID GROUP BY Item.ItemName, Branch.BranchName, Restaurant.RestName
 ORDER BY SUM(OrderDetails.ItemQuantity) DESC
)
WHERE ROWNUM <= 5;

-- Top Customers by Order Count Report
SELECT c.CustID, c.CustName, c.CustEmail, order_counts.TotalOrdersPlaced FROM Customer c JOIN (
 SELECT CustID, COUNT(OrderID) AS TotalOrdersPlaced FROM Orders GROUP BY CustID HAVING
COUNT(OrderID) = (SELECT MAX(OrderCount) FROM ( SELECT COUNT(OrderID) AS OrderCount FROM 
Orders GROUP BY CustID ) )
) order_counts ON c.CustID = order_counts.CustID;

-- Orders in Progress with Customer Details Report
SELECT o.OrderID, o.OrderDate, o.OrderStatus, o.DROPLOC, c.CustID, c.CustName, c.CustPhone 
FROM Orders o JOIN Customer c ON o.CustID = c.CustID WHERE o.OrderStatus = 'IN PROGRESS';

