-- To display menu items of a restaurant’s branch
CREATE OR REPLACE VIEW Menu AS
SELECT I.ItemId, I.ItemName, I.ItemAvailability, 
B.BranchId, B.BranchName, B.BranchAddress, B.BranchRating, B.RestID
FROM Item I JOIN Branch B
ON I.BranchId = B.BranchId;

-- To display order history of a customer
CREATE OR REPLACE VIEW OrderHistory AS
SELECT C.CustId, C.CustName, O.OrderID, O.OrderDate,
D.ItemId, I.ItemName, D.ItemQuantity, D.OrderedItemSize
FROM Customer C JOIN OrderS O ON C.CustId = O.CustId
JOIN OrderDetails D ON O.OrderId = D.OrderId 
JOIN Item I ON I.ItemId = D.ItemId;
