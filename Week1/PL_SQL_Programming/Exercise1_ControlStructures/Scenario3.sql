-- ============================================================
-- Scenario 3: Send reminders to customers whose loans
--             are due within the next 30 days
-- ============================================================

-- Table Setup (run once to create tables)

CREATE TABLE Customers (
    CustomerID   NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(100),
    Age          NUMBER,
    Balance      NUMBER,
    IsVIP        VARCHAR2(5) DEFAULT 'FALSE'
);

CREATE TABLE Loans (
    LoanID       NUMBER PRIMARY KEY,
    CustomerID   NUMBER REFERENCES Customers(CustomerID),
    InterestRate NUMBER,
    DueDate      DATE
);

-- Sample Data

INSERT INTO Customers VALUES (1, 'Sathvik', 65, 15000, 'FALSE');
INSERT INTO Customers VALUES (2, 'Ramesh', 45, 8000, 'FALSE');
INSERT INTO Customers VALUES (3, 'Suresh', 70, 5000, 'FALSE');
INSERT INTO Customers VALUES (4, 'Devi', 30, 20000, 'FALSE');
INSERT INTO Customers VALUES (5, 'Vijay', 62, 3000, 'FALSE');

INSERT INTO Loans VALUES (101, 1, 10.5, SYSDATE + 20);
INSERT INTO Loans VALUES (102, 2, 12.0, SYSDATE + 45);
INSERT INTO Loans VALUES (103, 3, 11.0, SYSDATE + 10);
INSERT INTO Loans VALUES (104, 4, 9.5, SYSDATE + 60);
INSERT INTO Loans VALUES (105, 5, 13.0, SYSDATE + 5);

COMMIT;

-- ============================================================
-- PL/SQL Block: Scenario 3
-- ============================================================

DECLARE

    CURSOR c_loans IS
        SELECT c.CustomerName,
               l.LoanID,
               l.DueDate
        FROM Customers c
        JOIN Loans l
        ON c.CustomerID = l.CustomerID;

BEGIN

    DBMS_OUTPUT.PUT_LINE('=== Scenario 3: Loan Due Reminder ===');
    DBMS_OUTPUT.PUT_LINE('-------------------------------------');

    FOR rec IN c_loans LOOP

        IF rec.DueDate <= SYSDATE + 30 THEN

            DBMS_OUTPUT.PUT_LINE(
                'Reminder -> Customer : ' || rec.CustomerName ||
                ' | Loan ID : ' || rec.LoanID ||
                ' | Due Date : ' || TO_CHAR(rec.DueDate,'DD-MON-YYYY')
            );

        ELSE

            DBMS_OUTPUT.PUT_LINE(
                'Customer : ' || rec.CustomerName ||
                ' | Loan not due within 30 days.'
            );

        END IF;

    END LOOP;

    DBMS_OUTPUT.PUT_LINE('-------------------------------------');
    DBMS_OUTPUT.PUT_LINE('Reminder generation completed.');

END;
/