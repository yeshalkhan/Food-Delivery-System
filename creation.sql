DROP TABLE Customer CASCADE CONSTRAINTS;
DROP TABLE Rider CASCADE CONSTRAINTS;
DROP TABLE Restaurant CASCADE CONSTRAINTS;
DROP TABLE Branch CASCADE CONSTRAINTS;
DROP TABLE Item CASCADE CONSTRAINTS;
DROP TABLE ItemSize CASCADE CONSTRAINTS;
DROP TABLE Orders CASCADE CONSTRAINTS;
DROP TABLE OrderDetails CASCADE CONSTRAINTS;

CREATE TABLE Customer (
    CustID VARCHAR2(10) CONSTRAINT pk_Customer PRIMARY KEY,
    CustName VARCHAR2(30) CONSTRAINT nn_CustName NOT NULL,
    CustPassword VARCHAR2(10) CONSTRAINT nn_CustPassword NOT NULL,
    CustPhone NUMBER(11) CONSTRAINT nn_CustPhone NOT NULL,
    CustAddress VARCHAR2(50) CONSTRAINT nn_CustAddress NOT NULL,
    CustEmail VARCHAR2(30) CONSTRAINT uk_CustEmail UNIQUE,
    CONSTRAINT chk_CustPasswordLength CHECK (LENGTH(CustPassword) >= 8),
    CONSTRAINT uk_CustPhone UNIQUE (CustPhone)
);

CREATE TABLE Rider (
    RiderID VARCHAR2(10) CONSTRAINT pk_Rider PRIMARY KEY,
    RiderName VARCHAR2(30) CONSTRAINT nn_RiderName NOT NULL,
    RiderPassword VARCHAR2(10) CONSTRAINT nn_RiderPassword NOT NULL,
    RiderPhone NUMBER(11) CONSTRAINT nn_RiderPhone NOT NULL,
    RiderEmail VARCHAR2(30) CONSTRAINT uk_RiderEmail UNIQUE,
    RiderBikeID VARCHAR2(10),
    CONSTRAINT chk_RiderPasswordLength CHECK (LENGTH(RiderPassword) >= 8),
    CONSTRAINT uk_RiderPhone UNIQUE (RiderPhone)
);

CREATE TABLE Restaurant (
    RestID VARCHAR2(10) CONSTRAINT pk_Restaurant PRIMARY KEY,
    RestName VARCHAR2(30) CONSTRAINT nn_RestName NOT NULL
);

CREATE TABLE Branch (
    BranchID VARCHAR2(10) CONSTRAINT pk_Branch PRIMARY KEY,
    BranchName VARCHAR2(30) CONSTRAINT nn_BranchName NOT NULL,
    BranchAddress VARCHAR2(50) CONSTRAINT nn_BranchAddress NOT NULL,
    BranchRating NUMBER CHECK (BranchRating BETWEEN 1 AND 5),
    RestID VARCHAR2(10) CONSTRAINT fk_Branch_Restaurant REFERENCES Restaurant(RestID)
);

CREATE TABLE Item (
    ItemID VARCHAR2(10) CONSTRAINT pk_Item PRIMARY KEY,
    ItemName VARCHAR2(30) CONSTRAINT nn_ItemName NOT NULL,
    BranchID VARCHAR2(10) CONSTRAINT fk_Item_Branch REFERENCES Branch(BranchID),
    ItemAvailability CHAR(1) CHECK (ItemAvailability IN ('Y', 'N'))
);

CREATE TABLE ItemSize (
    ItemID VARCHAR2(10),
    ItemSize VARCHAR2(25),
    ItemPrice NUMBER(5) CONSTRAINT nn_ItemPrice NOT NULL,
    CONSTRAINT pk_ItemSize PRIMARY KEY (ItemID, ItemSize)
);

CREATE TABLE Orders (
    OrderID VARCHAR2(10) CONSTRAINT pk_Orders PRIMARY KEY,
    DropLoc VARCHAR2(50) CONSTRAINT nn_DropLoc NOT NULL,
    OrderStatus VARCHAR2(11) CONSTRAINT chk_OrderStatus CHECK (OrderStatus IN ('IN MAKING', 'IN PROGRESS', 'DELIVERED')),
    DeliveryFee NUMBER(4),
    PayMethod VARCHAR2(17) CONSTRAINT chk_PayMethod CHECK (PayMethod IN ('BANK TRANSFER', 'COD', 'CREDIT/DEBIT CARD')),
    PayStatus VARCHAR2(9) CONSTRAINT chk_PayStatus CHECK (PayStatus IN ('PENDING', 'COMPLETED')),
    OrderDate DATE DEFAULT SYSDATE,
    CustID VARCHAR2(10) CONSTRAINT fk_Order_Customer REFERENCES Customer(CustID),
    RiderID VARCHAR2(10) CONSTRAINT fk_Order_Rider REFERENCES Rider(RiderID),
    OrderReview VARCHAR2(100),
    OrderRating NUMBER CONSTRAINT chk_OrderRating CHECK (OrderRating BETWEEN 1 AND 5)
);

CREATE TABLE OrderDetails (
    ItemQuantity NUMBER(3) DEFAULT 1 CONSTRAINT nn_ItemQuantity NOT NULL,
    OrderedItemSize VARCHAR2(50),
    ItemID VARCHAR2(10),
    OrderID VARCHAR2(10) CONSTRAINT fk_OrderDetails_Order REFERENCES Orders(OrderID),
    CONSTRAINT pk_OrderDetails PRIMARY KEY (OrderedItemSize, ItemID, OrderID),
    CONSTRAINT fk_OrderDetails FOREIGN KEY (ItemID, OrderedItemSize) REFERENCES ItemSize (ItemID,ItemSize)
);