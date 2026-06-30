-- ============================================================
-- Scenario 1 : Calculate Customer Age
-- ============================================================

CREATE TABLE Customers(
    CustomerID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(100),
    DOB DATE
);

INSERT INTO Customers VALUES(1,'Sathvik',TO_DATE('20-08-2003','DD-MM-YYYY'));
INSERT INTO Customers VALUES(2,'Ramesh',TO_DATE('15-05-1995','DD-MM-YYYY'));

COMMIT;

CREATE OR REPLACE FUNCTION CalculateAge
(
    p_DOB DATE
)
RETURN NUMBER
IS
    v_Age NUMBER;
BEGIN

    v_Age := FLOOR(MONTHS_BETWEEN(SYSDATE,p_DOB)/12);

    RETURN v_Age;

END;
/

BEGIN

    DBMS_OUTPUT.PUT_LINE(
    'Age : '||
    CalculateAge(TO_DATE('20-08-2003','DD-MM-YYYY'))
    );

END;
/