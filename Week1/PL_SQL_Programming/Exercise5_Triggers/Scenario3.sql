-- ============================================================
-- Scenario 3 : Validate Deposits and Withdrawals
-- ============================================================

CREATE TABLE Accounts(

    AccountID NUMBER PRIMARY KEY,
    Balance NUMBER

);

CREATE TABLE Transactions(

    TransactionID NUMBER PRIMARY KEY,
    AccountID NUMBER,
    Amount NUMBER,
    TransactionType VARCHAR2(20)

);

INSERT INTO Accounts
VALUES(1,10000);

COMMIT;

CREATE OR REPLACE TRIGGER CheckTransactionRules

BEFORE INSERT
ON Transactions

FOR EACH ROW

DECLARE

    v_Balance NUMBER;

BEGIN

    SELECT Balance
    INTO v_Balance
    FROM Accounts
    WHERE AccountID=:NEW.AccountID;

    IF :NEW.TransactionType='Withdrawal'
       AND :NEW.Amount>v_Balance THEN

       RAISE_APPLICATION_ERROR(
       -20001,
       'Insufficient Balance');

    ELSIF :NEW.TransactionType='Deposit'
          AND :NEW.Amount<=0 THEN

       RAISE_APPLICATION_ERROR(
       -20002,
       'Deposit Amount Must Be Positive');

    END IF;

END;
/

INSERT INTO Transactions
VALUES(101,1,2000,'Deposit');

INSERT INTO Transactions
VALUES(102,1,15000,'Withdrawal');

SELECT * FROM Transactions;