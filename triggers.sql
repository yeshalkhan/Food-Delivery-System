-- To check if an item is available before placing an order
CREATE OR REPLACE TRIGGER CheckItemAvailability BEFORE INSERT ON OrderDetails
FOR EACH ROW
DECLARE
Avail Item.ItemAvailability%type;
BEGIN
SELECT ItemAvailability INTO Avail FROM Item WHERE ItemId = :NEW.ItemId;
IF (Avail = 'N') THEN 
RAISE_APPLICATION_ERROR (-20003,'Item is not currently available');
END IF;
END;

-- To update a restaurant branch’s rating based on the rating of its order
CREATE OR REPLACE TRIGGER UpdateBranchRating
AFTER UPDATE OF OrderRating ON Orders
FOR EACH ROW
DECLARE
 PRAGMA AUTONOMOUS_TRANSACTION;
 AvgRating Branch.BranchRating%TYPE;
 BrId Branch.BranchId%TYPE;
 OldRating Branch.BranchRating%TYPE;
BEGIN
 -- Retrieve information for the updated order
 SELECT BranchId INTO BrId FROM Item WHERE ItemId = (SELECT ItemId FROM OrderDetails 
WHERE OrderId = : NEW.OrderId AND ROWNUM = 1);
 SELECT BranchRating INTO OldRating FROM Branch WHERE BranchId = BrId;
 -- Calculate the new average rating
 SELECT AVG(O.OrderRating) INTO AvgRating
 FROM OrderDetails D JOIN Orders O ON D.OrderId = O.OrderId
 WHERE D.ItemId IN (SELECT ItemId FROM Item WHERE BranchId = BrId);
 -- Update the branch rating using an autonomous transaction
 COMMIT; -- Commit the current transaction
 BEGIN
 -- Start a new transaction
 UPDATE Branch
 SET BranchRating = AvgRating
 WHERE BranchId = BrId;
 DBMS_OUTPUT.PUT_LINE('Old Rating : ' || OldRating);
 DBMS_OUTPUT.PUT_LINE('New Rating : ' || AvgRating);
 COMMIT; 
 END;
END;
