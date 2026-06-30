-- ============================================================
-- Scenario 2 : Employee Management Package
-- ============================================================

CREATE TABLE Employees(

    EmployeeID NUMBER PRIMARY KEY,
    EmployeeName VARCHAR2(100),
    Department VARCHAR2(50),
    Salary NUMBER

);

CREATE OR REPLACE PACKAGE EmployeeManagement AS

    PROCEDURE HireEmployee
    (
        p_ID NUMBER,
        p_Name VARCHAR2,
        p_Department VARCHAR2,
        p_Salary NUMBER
    );

    PROCEDURE UpdateEmployee
    (
        p_ID NUMBER,
        p_Salary NUMBER
    );

    FUNCTION AnnualSalary
    (
        p_ID NUMBER
    )
    RETURN NUMBER;

END EmployeeManagement;
/

CREATE OR REPLACE PACKAGE BODY EmployeeManagement AS

PROCEDURE HireEmployee
(
    p_ID NUMBER,
    p_Name VARCHAR2,
    p_Department VARCHAR2,
    p_Salary NUMBER
)
IS
BEGIN

INSERT INTO Employees
VALUES
(
    p_ID,
    p_Name,
    p_Department,
    p_Salary
);

END;

PROCEDURE UpdateEmployee
(
    p_ID NUMBER,
    p_Salary NUMBER
)
IS
BEGIN

UPDATE Employees
SET Salary=p_Salary
WHERE EmployeeID=p_ID;

END;

FUNCTION AnnualSalary
(
    p_ID NUMBER
)
RETURN NUMBER
IS

v_Salary NUMBER;

BEGIN

SELECT Salary
INTO v_Salary
FROM Employees
WHERE EmployeeID=p_ID;

RETURN v_Salary*12;

END;

END EmployeeManagement;
/

BEGIN

EmployeeManagement.HireEmployee(
1,
'Alice',
'IT',
50000
);

EmployeeManagement.UpdateEmployee(
1,
55000
);

DBMS_OUTPUT.PUT_LINE(
'Annual Salary : '||
EmployeeManagement.AnnualSalary(1)
);

COMMIT;

END;
/

SELECT * FROM Employees;