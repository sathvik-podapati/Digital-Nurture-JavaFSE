-- ============================================================
-- Scenario 1 : Generate Monthly Statements
-- ============================================================

CREATE TABLE Customers(
    CustomerID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(100)
);

CREATE TABLE Transactions(
    TransactionID NUMBER PRIMARY KEY,
    CustomerID NUMBER,
    Amount NUMBER,
    TransactionDate DATE
);

INSERT INTO Customers VALUES(1,'Sathvik');
INSERT INTO Customers VALUES(2,'Ramesh');

INSERT INTO Transactions VALUES(101,1,5000,SYSDATE);
INSERT INTO Transactions VALUES(102,2,3000,SYSDATE);
INSERT INTO Transactions VALUES(103,1,2000,SYSDATE);

COMMIT;

DECLARE

CURSOR c_statement IS

SELECT c.CustomerName,
       t.TransactionID,
       t.Amount,
       t.TransactionDate
FROM Customers c
JOIN Transactions t
ON c.CustomerID=t.CustomerID
WHERE EXTRACT(MONTH FROM t.TransactionDate)=EXTRACT(MONTH FROM SYSDATE);

v_Name Customers.CustomerName%TYPE;
v_ID Transactions.TransactionID%TYPE;
v_Amount Transactions.Amount%TYPE;
v_Date Transactions.TransactionDate%TYPE;

BEGIN

OPEN c_statement;

LOOP

FETCH c_statement
INTO v_Name,v_ID,v_Amount,v_Date;

EXIT WHEN c_statement%NOTFOUND;

DBMS_OUTPUT.PUT_LINE(
'Customer : '||v_Name||
' | Transaction : '||v_ID||
' | Amount : '||v_Amount||
' | Date : '||TO_CHAR(v_Date,'DD-MON-YYYY')
);

END LOOP;

CLOSE c_statement;

END;
/