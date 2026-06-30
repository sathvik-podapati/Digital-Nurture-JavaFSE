-- ============================================================
-- Scenario 2 : Update Employee Salary
-- ============================================================

CREATE TABLE Employees(
    EmployeeID NUMBER PRIMARY KEY,
    EmployeeName VARCHAR2(100),
    Salary NUMBER
);

INSERT INTO Employees VALUES(1,'Alice',50000);
INSERT INTO Employees VALUES(2,'Bob',60000);

COMMIT;

CREATE OR REPLACE PROCEDURE UpdateSalary
(
    p_EmployeeID NUMBER,
    p_Percentage NUMBER
)
IS
    v_Salary NUMBER;
BEGIN

    SELECT Salary
    INTO v_Salary
    FROM Employees
    WHERE EmployeeID = p_EmployeeID;

    UPDATE Employees
    SET Salary = Salary + (Salary * p_Percentage /100)
    WHERE EmployeeID = p_EmployeeID;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Salary Updated Successfully');

EXCEPTION

    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee ID Not Found');

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);

END;
/

BEGIN
    UpdateSalary(1,10);
END;
/

SELECT * FROM Employees;