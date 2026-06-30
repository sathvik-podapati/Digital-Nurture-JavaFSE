-- ============================================================
-- Scenario 2 : Apply Annual Maintenance Fee
-- ============================================================

CREATE TABLE Accounts(

AccountID NUMBER PRIMARY KEY,
CustomerName VARCHAR2(100),
Balance NUMBER

);

INSERT INTO Accounts VALUES(101,'Sathvik',15000);
INSERT INTO Accounts VALUES(102,'Ramesh',10000);
INSERT INTO Accounts VALUES(103,'Suresh',8000);

COMMIT;

DECLARE

CURSOR c_accounts IS
SELECT AccountID,Balance
FROM Accounts;

v_ID Accounts.AccountID%TYPE;
v_Balance Accounts.Balance%TYPE;

BEGIN

OPEN c_accounts;

LOOP

FETCH c_accounts
INTO v_ID,v_Balance;

EXIT WHEN c_accounts%NOTFOUND;

UPDATE Accounts
SET Balance=Balance-500
WHERE AccountID=v_ID;

DBMS_OUTPUT.PUT_LINE(
'Annual Fee Applied to Account : '||v_ID
);

END LOOP;

CLOSE c_accounts;

COMMIT;

END;
/

SELECT * FROM Accounts;