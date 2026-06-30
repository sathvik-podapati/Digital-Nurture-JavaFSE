-- ============================================================
-- Scenario 3 : Account Operations Package
-- ============================================================

CREATE TABLE Accounts(

    AccountID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(100),
    Balance NUMBER,
    Status VARCHAR2(20)

);

CREATE OR REPLACE PACKAGE AccountOperations AS

    PROCEDURE OpenAccount
    (
        p_ID NUMBER,
        p_Name VARCHAR2,
        p_Balance NUMBER
    );

    PROCEDURE CloseAccount
    (
        p_ID NUMBER
    );

    FUNCTION TotalBalance
    (
        p_Name VARCHAR2
    )
    RETURN NUMBER;

END AccountOperations;
/

CREATE OR REPLACE PACKAGE BODY AccountOperations AS

PROCEDURE OpenAccount
(
    p_ID NUMBER,
    p_Name VARCHAR2,
    p_Balance NUMBER
)
IS
BEGIN

INSERT INTO Accounts
VALUES
(
    p_ID,
    p_Name,
    p_Balance,
    'OPEN'
);

END;

PROCEDURE CloseAccount
(
    p_ID NUMBER
)
IS
BEGIN

UPDATE Accounts
SET Status='CLOSED'
WHERE AccountID=p_ID;

END;

FUNCTION TotalBalance
(
    p_Name VARCHAR2
)
RETURN NUMBER
IS

v_Total NUMBER;

BEGIN

SELECT SUM(Balance)
INTO v_Total
FROM Accounts
WHERE CustomerName=p_Name;

RETURN NVL(v_Total,0);

END;

END AccountOperations;
/

BEGIN

AccountOperations.OpenAccount(
101,
'Sathvik',
15000
);

AccountOperations.OpenAccount(
102,
'Sathvik',
5000
);

AccountOperations.CloseAccount(
102
);

DBMS_OUTPUT.PUT_LINE(
'Total Balance : '||
AccountOperations.TotalBalance('Sathvik')
);

COMMIT;

END;
/

SELECT * FROM Accounts;