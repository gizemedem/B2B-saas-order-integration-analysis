-- CUSTOMERS
INSERT INTO Customers VALUES
(1, 'ABC Retail', 'Gold'),
(2, 'XYZ Market', 'Silver'),
(3, 'TechStore Ltd', 'Gold');

-- PRODUCTS
INSERT INTO Products VALUES
(101, 'Laptop', 25000),
(102, 'Mouse', 500),
(103, 'Keyboard', 1200);

-- ORDERS
INSERT INTO Orders VALUES
(1001, 1, '2025-06-01', 'Completed'),
(1002, 2, '2025-06-02', 'Completed'),
(1003, 3, '2025-06-03', 'Pending'),
(1004, 1, '2025-06-04', 'Completed'); -- ERP'ye gitmemiş olacak

-- ORDER ITEMS (HATALI VERİLER BURADA)
INSERT INTO OrderItems VALUES
(1, 1001, 101, 1, 24000), -- PRICE MISMATCH ❌
(2, 1001, 102, 2, 500),
(3, 1002, 103, 1, 1200),
(4, 1003, 101, 1, 25000),
(5, 1004, 102, 1, 500);

-- ERP TRANSACTIONS
INSERT INTO ERP_Transactions VALUES
(1, 1001, 'Success', NULL),
(2, 1002, 'Success', NULL),
(3, 1003, 'Failed', 'Stock not available');
-- 1004 YOK ❌ (ERP sync missing)
