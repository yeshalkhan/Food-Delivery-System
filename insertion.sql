-- Insert statements for 10 customers

INSERT INTO Customer VALUES ('401', 'Ali Khan', 'Ali@1423', '03001234567', '123 ABC Street, Lahore', 'alikhan123@gmail.com');
INSERT INTO Customer VALUES ('402', 'Sara Ahmed', 'Sara@456', '03111234567', '456 XYZ Road, Islamabad', 'saraahmed456@gmail.com');
INSERT INTO Customer VALUES ('403', 'Ahmed Hassan', 'Ahmed@789', '03221234567', '789 MNO Avenue, Lahore', 'ahmedhassan789@gmail.com');
INSERT INTO Customer VALUES ('404', 'Aisha Malik', 'Aisha@101', '03331234567', '101 PQR Lane, Lahore', 'aishamalik101@gmail.com');
INSERT INTO Customer VALUES ('405', 'Bilal Khan', 'Bilal@202', '03441234567', '202 LMN Street, Karachi', 'bilalkhan202@gmail.com');
INSERT INTO Customer VALUES ('406', 'Nida Ali', 'Nida@303', '03551234567', '303 XYZ Avenue, Lahore', 'nidaali303@gmail.com');
INSERT INTO Customer VALUES ('407', 'Imran Ahmed', 'Imran@404', '03661234567', '404 ABC Road, Multan', 'imranahmed404@gmail.com');
INSERT INTO Customer VALUES ('408', 'Sadia Malik', 'Sadia@505', '03771234567', '505 PQR Lane, Karachi', 'sadiamalik505@gmail.com');
INSERT INTO Customer VALUES ('409', 'Zainab Hassan', 'Zainab@606', '03881234567', '606 MNO Street, Lahore', 'zainabhassan606@gmail.com');
INSERT INTO Customer VALUES ('410', 'Kamran Ali', 'Kamran@707', '03991234567', '707 LMN Avenue, Peshawar', 'kamranali707@gmail.com');

-- Insert statements for 10 riders

INSERT INTO Rider VALUES ('501', 'Hassan Ali', 'Hassan@123', '03451234567', 'hassanali123@gmail.com', 'Bike001');
INSERT INTO Rider VALUES ('502', 'Salman Khan', 'Salman@456', '03121234567', 'salmankhan456@gmail.com', 'Bike002');
INSERT INTO Rider VALUES ('503', 'Arif Malik', 'Arif@789', '03231234567', 'arifmalik789@gmail.com', 'Bike003');
INSERT INTO Rider VALUES ('504', 'Zaviyar Ahmed', 'Zavr@101', '03341234567', 'zaviyarahmed101@gmail.com', 'Bike004');
INSERT INTO Rider VALUES ('505', 'Faisal Khan', 'Faisal@202', '03451234568', 'faisalkhan202@gmail.com', 'Bike005');
INSERT INTO Rider VALUES ('506', 'Ayesha Ali', 'Ayesa@303', '03561234567', 'ayeshaali303@gmail.com', 'Bike006');
INSERT INTO Rider VALUES ('507', 'Tariq Ahmed', 'Tariq@404', '03671234567', 'tariqahmed404@gmail.com', 'Bike007');
INSERT INTO Rider VALUES ('508', 'Saima Malik', 'Saima@505', '03781234567', 'saimamalik505@gmail.com', 'Bike008');
INSERT INTO Rider VALUES ('509', 'Noman Hassan', 'Noman@606', '03891234567', 'nomanhassan606@gmail.com', 'Bike009');
INSERT INTO Rider VALUES ('510', 'Sami Aslam', 'Sami@707', '03991234567', 'samiaslam707@gmail.com', 'Bike010');

-- Insert statements for 7 restaurants

INSERT INTO Restaurant VALUES ('601', 'Cafe Euphoria');
INSERT INTO Restaurant VALUES ('602', 'Jalal Sons');
INSERT INTO Restaurant VALUES ('603', 'Makhbiz Kebab Corner');
INSERT INTO Restaurant VALUES ('605', 'Malmo Bakers & Sweets');
INSERT INTO Restaurant VALUES ('606', 'Waqas Biryani House');

-- Insert statements for restaurant branches

INSERT INTO Branch VALUES ('701', 'Cafe Euphoria Lahore 1', '123 XYZ Street, Lahore', '4.5', '601');
INSERT INTO Branch VALUES ('702', 'Cafe Euphoria Lahore 2', '456 ABC Road, Lahore', '4.2', '601');
INSERT INTO Branch VALUES ('703', 'Jalal Sons Lahore', '789 LMN Avenue, Lahore', '4.4', '602');
INSERT INTO Branch VALUES ('704', 'Jalal Sons Karachi', '101 PQR Lane, Karachi', '3.9', '602');
INSERT INTO Branch VALUES ('705', 'Makhbiz Peshawar', '202 MNO Road, Peshawar', '4.3', '603');
INSERT INTO Branch VALUES ('706', 'Malmo Islamabad 1', '303 GHI Street, Islamabad', '4.6', '605');
INSERT INTO Branch VALUES ('707', 'Malmo Islamabad 2', '404 JKL Avenue, Islamabad', '4.1', '605');
INSERT INTO Branch VALUES ('708', 'Malmo Lahore 1', '505 ABC Road, Lahore', '4.9', '605');
INSERT INTO Branch VALUES ('709', 'Malmo Lahore 2', '606 XYZ Lane, Lahore', '4.0', '605');
INSERT INTO Branch VALUES ('710', 'Malmo Karachi', '707 PQR Road, Karachi', '4.0', '605');
INSERT INTO Branch VALUES ('711', 'Waqas Biryani House Lahore', '1011 KLM Road, Lahore', '4.6', '606');

-- Insert statements for items

-- Cafe Euphoria items
INSERT INTO Item VALUES ('800', 'Cappuccino', '701', 'Y');
INSERT INTO Item VALUES ('801', 'Chicken Sandwich', '701', 'Y');
INSERT INTO Item VALUES ('802', 'Chocolate Cake', '701', 'Y');
INSERT INTO Item VALUES ('803', 'Chicken Sandwich', '702', 'Y');
INSERT INTO Item VALUES ('804', 'Chocolate Cake', '702', 'N');
-- Jalal Sons items
INSERT INTO Item VALUES ('805', 'Chicken Wings', '703', 'Y');
INSERT INTO Item VALUES ('806', 'Pepperoni Pizza', '703', 'Y');
INSERT INTO Item VALUES ('807', 'Fries', '703', 'Y');
INSERT INTO Item VALUES ('808', 'Cheeseburger', '704', 'N');
INSERT INTO Item VALUES ('809', 'Fries', '704', 'Y');
INSERT INTO Item VALUES ('810', 'Chicken Tenders', '704', 'Y');
INSERT INTO Item VALUES ('811', 'Pepperoni Pizza', '704', 'Y');
-- Makhbiz Kebab Corner items
INSERT INTO Item VALUES ('812', 'Chapli Kebab', '705', 'Y');
INSERT INTO Item VALUES ('813', 'Afghani Pulao', '705', 'Y');
INSERT INTO Item VALUES ('814', 'Mint Raita', '705', 'Y');
-- Malmo Bakers & Sweets items
INSERT INTO Item VALUES ('815', 'Chicken Patties', '706', 'Y');
INSERT INTO Item VALUES ('816', 'Pista Rasmalai', '706', 'Y');
INSERT INTO Item VALUES ('817', 'Gulab Jamun', '706', 'N');
INSERT INTO Item VALUES ('818', 'Fruit Trifle', '707', 'Y');
INSERT INTO Item VALUES ('819', 'Fruit Trifle', '708', 'Y');
INSERT INTO Item VALUES ('820', 'Gulab Jamun', '708', 'Y');
INSERT INTO Item VALUES ('821', 'Chicken Patties', '708', 'Y');
INSERT INTO Item VALUES ('822', 'Fruit Trifle', '709', 'Y');
INSERT INTO Item VALUES ('823', 'Pista Rasmalai', '709', 'Y');
INSERT INTO Item VALUES ('824', 'Fruit Trifle', '710', 'Y');
INSERT INTO Item VALUES ('825', 'Chicken Bread', '710', 'Y');
-- Waqas Biryani House items
INSERT INTO Item VALUES ('826', 'Chicken Biryani', '711', 'Y');
INSERT INTO Item VALUES ('827', 'Chicken Piece', '711', 'Y');
INSERT INTO Item VALUES ('828', 'Aloo Raita', '711', 'Y');

-- Insert statements for item sizes

-- Cafe Euphoria items
INSERT INTO ItemSize VALUES ('800', 'Small',350);
INSERT INTO ItemSize VALUES ('800', 'Large',750);
INSERT INTO ItemSize VALUES ('801', 'Small',300);
INSERT INTO ItemSize VALUES ('801', 'Large',450);
INSERT INTO ItemSize VALUES ('802', 'Small',450);
INSERT INTO ItemSize VALUES ('802', 'Large',650);
INSERT INTO ItemSize VALUES ('803', 'Small',1200);
INSERT INTO ItemSize VALUES ('803', 'Large',1800);
INSERT INTO ItemSize VALUES ('804', 'Small (1 Pound)',450);
INSERT INTO ItemSize VALUES ('804', 'Large (2 Pounds)',650);
-- Jalal Sons items
INSERT INTO ItemSize VALUES ('805', 'Small Pack (10 wings)',500);
INSERT INTO ItemSize VALUES ('805', 'Large Pack (15 wings)',750);
INSERT INTO ItemSize VALUES ('806', 'Small', 700);
INSERT INTO ItemSize VALUES ('806', 'Medium', 1400);
INSERT INTO ItemSize VALUES ('806', 'Large', 2100);
INSERT INTO ItemSize VALUES ('807', 'Small Pack', 200);
INSERT INTO ItemSize VALUES ('807', 'Large Pack', 350);
INSERT INTO ItemSize VALUES ('808', 'Small (without fries)', 450);
INSERT INTO ItemSize VALUES ('808', 'Large (with fries)', 550);
INSERT INTO ItemSize VALUES ('809', 'Small Pack', 200);
INSERT INTO ItemSize VALUES ('809', 'Large Pack', 350);
INSERT INTO ItemSize VALUES ('810', 'Small Pack (10 pieces)', 600);
INSERT INTO ItemSize VALUES ('810', 'Large Pack (15 pieces)', 750);
INSERT INTO ItemSize VALUES ('811', 'Small', 550);
INSERT INTO ItemSize VALUES ('811', 'Medium', 950);
INSERT INTO ItemSize VALUES ('811', 'Large', 1900);
-- Makhbiz Kebab Corner items
INSERT INTO ItemSize VALUES ('812', 'Small', 140);
INSERT INTO ItemSize VALUES ('812', 'Large', 170);
INSERT INTO ItemSize VALUES ('813', 'Small Box', 450);
INSERT INTO ItemSize VALUES ('813', 'Large Box', 750);
INSERT INTO ItemSize VALUES ('814', 'Small', 50);
INSERT INTO ItemSize VALUES ('814', 'Large', 70);
-- Malmo Bakers & Sweets items
INSERT INTO ItemSize VALUES ('815', 'Single piece', 120);
INSERT INTO ItemSize VALUES ('815', 'Pack (3 pieces)', 430);
INSERT INTO ItemSize VALUES ('816', 'Small Box', 200);
INSERT INTO ItemSize VALUES ('816', 'Large Box', 350);
INSERT INTO ItemSize VALUES ('817', 'Small Box (2 pieces)', 150);
INSERT INTO ItemSize VALUES ('817', 'Large Box (4 pieces)', 300);
INSERT INTO ItemSize VALUES ('818', 'Small Pack', 300);
INSERT INTO ItemSize VALUES ('818', 'Large Pack', 450);
INSERT INTO ItemSize VALUES ('819', 'Small Pack', 300);
INSERT INTO ItemSize VALUES ('819', 'Large', 450);
INSERT INTO ItemSize VALUES ('820', 'Small Box (2 pieces)', 150);
INSERT INTO ItemSize VALUES ('820', 'Large Box (4 pieces)', 300);
INSERT INTO ItemSize VALUES ('821', 'Single piece', 120);
INSERT INTO ItemSize VALUES ('821', 'Pack (3 pieces)', 430);
INSERT INTO ItemSize VALUES ('822', 'Small Pack', 300);
INSERT INTO ItemSize VALUES ('822', 'Large', 450);
INSERT INTO ItemSize VALUES ('823', 'Small box', 200);
INSERT INTO ItemSize VALUES ('823', 'Large box', 350);
INSERT INTO ItemSize VALUES ('824', 'Small Box', 450);
INSERT INTO ItemSize VALUES ('824', 'Large Box', 750);
INSERT INTO ItemSize VALUES ('825', 'Small', 250);
INSERT INTO ItemSize VALUES ('825', 'Large', 350);
-- Waqas Biryani House items
INSERT INTO ItemSize VALUES ('826', 'Small Box', 750);
INSERT INTO ItemSize VALUES ('826', 'Large Box', 1050);
INSERT INTO ItemSize VALUES ('827', 'Chest Piece', 550);
INSERT INTO ItemSize VALUES ('827', 'Leg Piece', 600);
INSERT INTO ItemSize VALUES ('828', 'Small Box', 150);
INSERT INTO ItemSize VALUES ('828', 'Large Box', 200);

-- Insert statements for orders

INSERT INTO Orders VALUES ('901', '123 Main Street, Lahore', 'IN MAKING', 150, 'CREDIT/DEBIT CARD', 'PENDING', SYSDATE, '401', '501', 'Good food and service!', 4.5);
INSERT INTO Orders VALUES ('902', '456 Park Avenue, Islamabad', 'IN PROGRESS', 200, 'COD', 'PENDING', SYSDATE, '402', '502', 'On-time delivery', 4.0);
INSERT INTO Orders VALUES ('903', '789 Downtown Road, Lahore', 'DELIVERED', 250, 'BANK TRANSFER', 'COMPLETED', SYSDATE, '403', '503', 'Delicious as always', 4.8);
INSERT INTO Orders VALUES ('904', '101 Hilltop Lane, Lahore', 'IN MAKING', 180, 'CREDIT/DEBIT CARD', 'PENDING', SYSDATE, '404', '504', 'Excellent service!', 4.7);
INSERT INTO Orders VALUES ('905', '202 Seaview Street, Karachi', 'DELIVERED', 120, 'COD', 'COMPLETED', SYSDATE, '401', '505', 'Perfectly cooked', 4.2);
INSERT INTO Orders VALUES ('906', '303 Skyline Avenue, Lahore', 'IN PROGRESS', 160, 'BANK TRANSFER', 'PENDING', SYSDATE, '406', '506', 'Fast delivery', 4.3);
INSERT INTO Orders VALUES ('907', '404 Sunrise Road, Multan', 'DELIVERED', 190, 'COD', 'COMPLETED', SYSDATE, '407', '507', 'Great experience', 4.9);
INSERT INTO Orders VALUES ('908', '505 Moonlight Lane, Karachi', 'DELIVERED', 210, 'CREDIT/DEBIT CARD', 'COMPLETED', SYSDATE, '408', '508', 'Awesome taste', 4.6);
INSERT INTO Orders VALUES ('909', '606 Universe Street, Lahore', 'IN MAKING', 220, 'COD', 'PENDING', SYSDATE, '409', '509', 'Best biryani in town', 4.4);
INSERT INTO Orders VALUES ('910', '707 Galaxy Avenue, Peshawar', 'IN PROGRESS', 130, 'BANK TRANSFER', 'PENDING', SYSDATE, '410', '510', 'Delivered on time', 4.1);
INSERT INTO Orders VALUES ('911', '111 Garden Street, Lahore', 'DELIVERED', 180, 'COD', 'COMPLETED', SYSDATE, '401', '501', 'Loved the cappuccino!', 4.2);
INSERT INTO Orders VALUES ('912', '222 Mountain Road, Islamabad', 'IN MAKING', 200, 'CREDIT/DEBIT CARD', 'PENDING', SYSDATE, '401', '502', 'Waiting for the delicious pastry', 4.0);
INSERT INTO Orders VALUES ('913', '333 Beach Avenue, Karachi', 'IN PROGRESS', 220, 'BANK TRANSFER', 'PENDING', SYSDATE, '403', '503', 'Excited about the pizza!', 4.3);
INSERT INTO Orders VALUES ('914', '444 Hillside Lane, Peshawar', 'DELIVERED', 250, 'COD', 'COMPLETED', SYSDATE, '404', '504', 'Awesome kebabs!', 4.9);
INSERT INTO Orders VALUES ('915', '555 Cityscape Road, Lahore', 'DELIVERED', 160, 'CREDIT/DEBIT CARD', 'COMPLETED', SYSDATE, '405', '505', 'Fast and tasty', 4.6);
INSERT INTO Orders VALUES ('916', '666 Sunset Avenue, Lahore', 'IN MAKING', 300, 'BANK TRANSFER', 'PENDING', SYSDATE, '406', '506', 'Biryani feast!', 5.0);
INSERT INTO Orders VALUES ('917', '777 Seaside Street, Karachi', 'IN PROGRESS', 170, 'COD', 'PENDING', SYSDATE, '407', '507', 'Dessert time', 4.4);
INSERT INTO Orders VALUES ('918', '888 Riverside Road, Lahore', 'DELIVERED', 190, 'CREDIT/DEBIT CARD', 'COMPLETED', SYSDATE, '408', '508', 'Loved the chicken sandwich!', 4.7);
INSERT INTO Orders VALUES ('919', '999 Starlight Lane, Lahore', 'DELIVERED', 210, 'BANK TRANSFER', 'COMPLETED', SYSDATE, '409', '509', 'Trifle delight', 4.1);
INSERT INTO Orders VALUES ('920', '1010 Skylight Avenue, Lahore', 'IN MAKING', 220, 'COD', 'PENDING', SYSDATE, '401', '510', 'Craving for the cheeseburger', 4.8);

-- Insert statements for order details

-- Insert statements for order details

-- Order 901 details
INSERT INTO OrderDetails VALUES (1, 'Large', '801', '901');
INSERT INTO OrderDetails VALUES (2, 'Small', '802', '901');
INSERT INTO OrderDetails VALUES (1, 'Small (1 Pound)', '804', '901');
-- Order 902 details
INSERT INTO OrderDetails VALUES (3, 'Small Pack (10 wings)', '805', '902');
INSERT INTO OrderDetails VALUES (2, 'Medium', '811', '902');
-- Order 903 details
INSERT INTO OrderDetails VALUES (2, 'Large Box (4 pieces)', '820', '903');
INSERT INTO OrderDetails VALUES (1, 'Large', '822', '903');
-- Order 904 details
INSERT INTO OrderDetails VALUES (1, 'Medium', '811', '904');
INSERT INTO OrderDetails VALUES (2, 'Small (without fries)', '808', '904');
-- Order 905 details
INSERT INTO OrderDetails VALUES (1, 'Large Pack (15 pieces)', '810', '905');
INSERT INTO OrderDetails VALUES (2, 'Large Pack', '809', '905');
-- Order 906 details
INSERT INTO OrderDetails VALUES (3, 'Large Pack', '809', '906');
INSERT INTO OrderDetails VALUES (2, 'Small (1 Pound)', '804', '906');
-- Order 907 details
INSERT INTO OrderDetails VALUES (2, 'Small (1 Pound)', '804', '907');
INSERT INTO OrderDetails VALUES (1, 'Small Pack (10 wings)', '805', '907');
-- Order 908 details
INSERT INTO OrderDetails VALUES (1, 'Small Box', '816', '908');
INSERT INTO OrderDetails VALUES (2, 'Large Box (4 pieces)', '820', '908');
-- Order 909 details
INSERT INTO OrderDetails VALUES (3, 'Small Pack (10 pieces)', '810', '909');
INSERT INTO OrderDetails VALUES (1, 'Small (without fries)', '808', '909');
-- Order 910 details
INSERT INTO OrderDetails VALUES (2, 'Medium', '811', '910');
INSERT INTO OrderDetails VALUES (1, 'Large Pack (15 pieces)', '810', '910');
-- Order 911 details
INSERT INTO OrderDetails VALUES (1, 'Large', '801', '911');
INSERT INTO OrderDetails VALUES (2, 'Small', '802', '911');
INSERT INTO OrderDetails VALUES (1, 'Small', '803', '911');
-- Order 912 details
INSERT INTO OrderDetails VALUES (2, 'Large (2 Pounds)', '804', '912');
INSERT INTO OrderDetails VALUES (1, 'Small Pack (10 wings)', '805', '912');
-- Order 913 details
INSERT INTO OrderDetails VALUES (1, 'Medium', '806', '913');
INSERT INTO OrderDetails VALUES (1, 'Large Pack', '807', '913');
INSERT INTO OrderDetails VALUES (1, 'Large Pack', '809', '913');
-- Order 914 details
INSERT INTO OrderDetails VALUES (1, 'Small', '812', '914');
-- Order 915 details
INSERT INTO OrderDetails VALUES (1, 'Single piece', '815', '915');
INSERT INTO OrderDetails VALUES (1, 'Large Box', '816', '915');
INSERT INTO OrderDetails VALUES (2, 'Large Box (4 pieces)', '817', '915');
-- Order 916 details 
INSERT INTO OrderDetails VALUES (1, 'Large', '825', '916');
INSERT INTO OrderDetails VALUES (4, 'Small Box', '824', '916');
-- Order 917 details
INSERT INTO OrderDetails VALUES (1, 'Small', '806', '917');
INSERT INTO OrderDetails VALUES (1, 'Medium', '806', '917');
-- Order 918 details
INSERT INTO OrderDetails VALUES (2, 'Large', '801', '918');
INSERT INTO OrderDetails VALUES (1, 'Small', '803', '918');
-- Order 919 details
INSERT INTO OrderDetails VALUES (1, 'Large Box (4 pieces)', '820', '919');
INSERT INTO OrderDetails VALUES (1, 'Single piece', '821', '919');
-- Order 920 details
INSERT INTO OrderDetails VALUES (2, 'Small', '801', '920');
INSERT INTO OrderDetails VALUES (2, 'Small', '802', '920');
INSERT INTO OrderDetails VALUES (1, 'Large', '803', '920');


​