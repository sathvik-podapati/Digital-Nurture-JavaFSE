-- ============================================================
-- Scenario 1 : Update LastModified Automatically
-- ============================================================

CREATE TABLE Customers(

    CustomerID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(100),
    Balance NUMBER,
    LastModified DATE

);

INSERT INTO Customers
VALUES(1,'Sathvik',15000,SYSDATE);

COMMIT;

CREATE OR REPLACE TRIGGER UpdateCustomerLastModified

BEFORE UPDATE
ON Customers

FOR EACH ROW

BEGIN

    :NEW.LastModified := SYSDATE;

END;
/

UPDATE Customers
SET Balance=20000
WHERE CustomerID=1;

COMMIT;

SELECT * FROM Customers;