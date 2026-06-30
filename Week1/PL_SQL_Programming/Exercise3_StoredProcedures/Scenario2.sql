-- ============================================================
-- Scenario 2 : Update Employee Bonus
-- ============================================================

CREATE TABLE Employees(
    EmployeeID NUMBER PRIMARY KEY,
    EmployeeName VARCHAR2(100),
    Department VARCHAR2(50),
    Salary NUMBER
);

INSERT INTO Employees VALUES(1,'Alice','IT',50000);
INSERT INTO Employees VALUES(2,'Bob','IT',60000);
INSERT INTO Employees VALUES(3,'John','HR',45000);

COMMIT;

CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus
(
    p_Department VARCHAR2,
    p_Bonus NUMBER
)
IS
BEGIN

    UPDATE Employees
    SET Salary = Salary + (Salary * p_Bonus/100)
    WHERE Department = p_Department;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Bonus Updated Successfully');

END;
/

BEGIN
    UpdateEmployeeBonus('IT',10);
END;
/

SELECT * FROM Employees;