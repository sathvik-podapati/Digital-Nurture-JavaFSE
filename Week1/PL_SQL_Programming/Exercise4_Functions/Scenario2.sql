-- ============================================================
-- Scenario 2 : Calculate Monthly Installment
-- ============================================================

CREATE OR REPLACE FUNCTION CalculateMonthlyInstallment
(
    p_LoanAmount NUMBER,
    p_InterestRate NUMBER,
    p_Years NUMBER
)
RETURN NUMBER
IS

    v_Monthly NUMBER;

BEGIN

    v_Monthly :=
    (p_LoanAmount +
    (p_LoanAmount*p_InterestRate*p_Years/100))
    /(p_Years*12);

    RETURN ROUND(v_Monthly,2);

END;
/

BEGIN

DBMS_OUTPUT.PUT_LINE(
'Monthly EMI : '||
CalculateMonthlyInstallment(500000,8,5)
);

END;
/