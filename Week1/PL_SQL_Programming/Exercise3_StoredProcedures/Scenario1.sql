-- ============================================================
-- Scenario 1 : Process Monthly Interest
-- ============================================================

CREATE TABLE Accounts(
    AccountID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(100),
    AccountType VARCHAR2(20),
    Balance NUMBER
);

INSERT INTO Accounts VALUES(101,'Sathvik','Savings',10000);
INSERT INTO Accounts VALUES(102,'Ramesh','Savings',20000);
INSERT INTO Accounts VALUES(103,'Suresh','Current',15000);

COMMIT;

CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest
IS
BEGIN

    UPDATE Accounts
    SET Balance = Balance + (Balance * 1/100)
    WHERE AccountType='Savings';

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Monthly Interest Processed Successfully');

END;
/

BEGIN
    ProcessMonthlyInterest;
END;
/

SELECT * FROM Accounts;