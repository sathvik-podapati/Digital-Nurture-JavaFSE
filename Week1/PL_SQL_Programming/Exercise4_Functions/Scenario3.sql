-- ============================================================
-- Scenario 3 : Check Sufficient Balance
-- ============================================================

CREATE TABLE Accounts(

    AccountID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(100),
    Balance NUMBER

);

INSERT INTO Accounts VALUES(101,'Sathvik',15000);
INSERT INTO Accounts VALUES(102,'Ramesh',8000);

COMMIT;

CREATE OR REPLACE FUNCTION HasSufficientBalance
(
    p_AccountID NUMBER,
    p_Amount NUMBER
)
RETURN VARCHAR2
IS

    v_Balance NUMBER;

BEGIN

    SELECT Balance
    INTO v_Balance
    FROM Accounts
    WHERE AccountID=p_AccountID;

    IF v_Balance>=p_Amount THEN

        RETURN 'TRUE';

    ELSE

        RETURN 'FALSE';

    END IF;

END;
/

BEGIN

DBMS_OUTPUT.PUT_LINE(
'Has Balance : '||
HasSufficientBalance(101,10000)
);

END;
/