-- ============================================================
-- Scenario 3 : Transfer Funds
-- ============================================================

CREATE TABLE Accounts(
    AccountID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(100),
    Balance NUMBER
);

INSERT INTO Accounts VALUES(101,'Sathvik',15000);
INSERT INTO Accounts VALUES(102,'Ramesh',8000);

COMMIT;

CREATE OR REPLACE PROCEDURE TransferFunds
(
    p_FromAccount NUMBER,
    p_ToAccount NUMBER,
    p_Amount NUMBER
)
IS

    v_Balance NUMBER;

BEGIN

    SELECT Balance
    INTO v_Balance
    FROM Accounts
    WHERE AccountID = p_FromAccount;

    IF v_Balance >= p_Amount THEN

        UPDATE Accounts
        SET Balance = Balance - p_Amount
        WHERE AccountID = p_FromAccount;

        UPDATE Accounts
        SET Balance = Balance + p_Amount
        WHERE AccountID = p_ToAccount;

        COMMIT;

        DBMS_OUTPUT.PUT_LINE('Transfer Successful');

    ELSE

        DBMS_OUTPUT.PUT_LINE('Insufficient Balance');

    END IF;

END;
/

BEGIN
    TransferFunds(101,102,5000);
END;
/

SELECT * FROM Accounts;