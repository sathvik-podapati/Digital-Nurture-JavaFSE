-- ============================================================
-- Scenario 2: Promote customers to VIP
--             if Balance > 10000
-- ============================================================

-- Table Setup (run once to create tables)
CREATE TABLE Customers (
    CustomerID   NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(100),
    Age          NUMBER,
    Balance      NUMBER,
    IsVIP        VARCHAR2(5) DEFAULT 'FALSE'
);

-- Sample Data
INSERT INTO Customers VALUES (1, 'Sathvik', 65, 15000, 'FALSE');
INSERT INTO Customers VALUES (2, 'Ramesh', 45, 8000, 'FALSE');
INSERT INTO Customers VALUES (3, 'Suresh', 70, 5000, 'FALSE');
INSERT INTO Customers VALUES (4, 'Devi', 30, 20000, 'FALSE');
INSERT INTO Customers VALUES (5, 'Vijay', 62, 3000, 'FALSE');

COMMIT;

-- ============================================================
-- PL/SQL Block: Scenario 2
-- ============================================================

DECLARE
    CURSOR c_customers IS
        SELECT CustomerID,
               CustomerName,
               Balance,
               IsVIP
        FROM Customers;

BEGIN
    DBMS_OUTPUT.PUT_LINE('=== Scenario 2: VIP Customer Promotion ===');
    DBMS_OUTPUT.PUT_LINE('------------------------------------------');

    FOR rec IN c_customers LOOP

        IF rec.Balance > 10000 THEN

            UPDATE Customers
            SET IsVIP = 'TRUE'
            WHERE CustomerID = rec.CustomerID;

            DBMS_OUTPUT.PUT_LINE(
                'Customer : ' || rec.CustomerName ||
                ' | Balance: ' || rec.Balance ||
                ' | Status: VIP'
            );

        ELSE

            UPDATE Customers
            SET IsVIP = 'FALSE'
            WHERE CustomerID = rec.CustomerID;

            DBMS_OUTPUT.PUT_LINE(
                'Customer : ' || rec.CustomerName ||
                ' | Balance: ' || rec.Balance ||
                ' | Status: Regular Customer'
            );

        END IF;

    END LOOP;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('VIP status updated successfully.');

END;
/