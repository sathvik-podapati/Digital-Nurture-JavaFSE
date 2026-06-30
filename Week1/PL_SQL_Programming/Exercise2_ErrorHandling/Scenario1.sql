-- ============================================================
-- Exercise 2 : Error Handling
-- Scenario 1 : Safe Fund Transfer
-- ============================================================

-- Create Accounts Table

CREATE TABLE Accounts (
    AccountID      NUMBER PRIMARY KEY,
    CustomerName   VARCHAR2(100),
    Balance        NUMBER
);

-- Sample Data

INSERT INTO Accounts VALUES (101, 'Sathvik', 15000);
INSERT INTO Accounts VALUES (102, 'Ramesh', 8000);

COMMIT;

-- ============================================================
-- Stored Procedure
-- ============================================================

CREATE OR REPLACE PROCEDURE SafeTransferFunds
(
    p_fromAccount NUMBER,
    p_toAccount   NUMBER,
    p_amount      NUMBER
)
IS

    v_balance NUMBER;

BEGIN

    -- Get Sender Balance

    SELECT Balance
    INTO v_balance
    FROM Accounts
    WHERE AccountID = p_fromAccount;

    -- Check Balance

    IF v_balance < p_amount THEN

        RAISE_APPLICATION_ERROR(-20001,
        'Insufficient Balance');

    END IF;

    -- Deduct Amount

    UPDATE Accounts
    SET Balance = Balance - p_amount
    WHERE AccountID = p_fromAccount;

    -- Add Amount

    UPDATE Accounts
    SET Balance = Balance + p_amount
    WHERE AccountID = p_toAccount;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Transfer Successful');

EXCEPTION

    WHEN OTHERS THEN

        ROLLBACK;

        DBMS_OUTPUT.PUT_LINE('Transfer Failed');

        DBMS_OUTPUT.PUT_LINE(SQLERRM);

END;
/