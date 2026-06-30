-- ============================================================
-- Scenario 3 : Update Loan Interest Rates
-- ============================================================

CREATE TABLE Loans(

LoanID NUMBER PRIMARY KEY,
CustomerName VARCHAR2(100),
InterestRate NUMBER

);

INSERT INTO Loans VALUES(101,'Sathvik',10);
INSERT INTO Loans VALUES(102,'Ramesh',12);
INSERT INTO Loans VALUES(103,'Suresh',9);

COMMIT;

DECLARE

CURSOR c_loans IS
SELECT LoanID,
       InterestRate
FROM Loans;

v_LoanID Loans.LoanID%TYPE;
v_Rate Loans.InterestRate%TYPE;

BEGIN

OPEN c_loans;

LOOP

FETCH c_loans
INTO v_LoanID,v_Rate;

EXIT WHEN c_loans%NOTFOUND;

UPDATE Loans
SET InterestRate=InterestRate+0.5
WHERE LoanID=v_LoanID;

DBMS_OUTPUT.PUT_LINE(
'Updated Loan ID : '||v_LoanID
);

END LOOP;

CLOSE c_loans;

COMMIT;

END;
/

SELECT * FROM Loans;