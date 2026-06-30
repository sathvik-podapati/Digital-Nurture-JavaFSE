-- ============================================================
-- Scenario 3 : Add New Customer
-- ============================================================

CREATE TABLE Customers(

    CustomerID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(100),
    Age NUMBER,
    Balance NUMBER

);

INSERT INTO Customers VALUES(1,'Sathvik',22,15000);

COMMIT;

CREATE OR REPLACE PROCEDURE AddNewCustomer
(
    p_ID NUMBER,
    p_Name VARCHAR2,
    p_Age NUMBER,
    p_Balance NUMBER
)
IS
BEGIN

    INSERT INTO Customers
    VALUES
    (
        p_ID,
        p_Name,
        p_Age,
        p_Balance
    );

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Customer Added Successfully');

EXCEPTION

    WHEN DUP_VAL_ON_INDEX THEN

        DBMS_OUTPUT.PUT_LINE('Customer ID Already Exists');

    WHEN OTHERS THEN

        DBMS_OUTPUT.PUT_LINE(SQLERRM);

END;
/

BEGIN
    AddNewCustomer(2,'Ramesh',25,9000);
END;
/

SELECT * FROM Customers;