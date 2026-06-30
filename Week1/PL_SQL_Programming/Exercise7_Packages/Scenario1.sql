-- ============================================================
-- Scenario 1 : Customer Management Package
-- ============================================================

CREATE TABLE Customers(

    CustomerID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(100),
    Balance NUMBER

);

INSERT INTO Customers VALUES(1,'Sathvik',15000);

COMMIT;

CREATE OR REPLACE PACKAGE CustomerManagement AS

    PROCEDURE AddCustomer
    (
        p_ID NUMBER,
        p_Name VARCHAR2,
        p_Balance NUMBER
    );

    PROCEDURE UpdateCustomer
    (
        p_ID NUMBER,
        p_Balance NUMBER
    );

    FUNCTION GetBalance
    (
        p_ID NUMBER
    )
    RETURN NUMBER;

END CustomerManagement;
/

CREATE OR REPLACE PACKAGE BODY CustomerManagement AS

PROCEDURE AddCustomer
(
    p_ID NUMBER,
    p_Name VARCHAR2,
    p_Balance NUMBER
)
IS
BEGIN

    INSERT INTO Customers
    VALUES(p_ID,p_Name,p_Balance);

END;

PROCEDURE UpdateCustomer
(
    p_ID NUMBER,
    p_Balance NUMBER
)
IS
BEGIN

    UPDATE Customers
    SET Balance=p_Balance
    WHERE CustomerID=p_ID;

END;

FUNCTION GetBalance
(
    p_ID NUMBER
)
RETURN NUMBER
IS

    v_Balance NUMBER;

BEGIN

    SELECT Balance
    INTO v_Balance
    FROM Customers
    WHERE CustomerID=p_ID;

    RETURN v_Balance;

END;

END CustomerManagement;
/

BEGIN

CustomerManagement.AddCustomer(2,'Ramesh',8000);

CustomerManagement.UpdateCustomer(1,20000);

DBMS_OUTPUT.PUT_LINE(
'Balance : '||
CustomerManagement.GetBalance(1)
);

COMMIT;

END;
/

SELECT * FROM Customers;