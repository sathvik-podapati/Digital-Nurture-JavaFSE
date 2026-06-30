# Exercise 1 - Control Structures

## Objective

The objective of this exercise is to understand and implement PL/SQL control structures such as loops and conditional statements to perform banking operations on customer and loan data.

## Scenarios Implemented

### Scenario 1: Loan Interest Discount

- Loops through all customers.
- Calculates each customer's age using their date of birth.
- If the customer is above 60 years of age, reduces the loan interest rate by 1%.
- Displays a confirmation message for each updated customer.

### Scenario 2: VIP Customer Promotion

- Iterates through all customers.
- Checks the account balance.
- Customers with a balance greater than $10,000 are marked as VIP.
- Displays a message whenever a customer is promoted.

**Note:** An additional column `IsVIP` is added to the `Customers` table for this scenario.

### Scenario 3: Loan Due Reminder

- Retrieves all loans that are due within the next 30 days.
- Displays a reminder message containing the customer name, loan ID, and due date.

---

## Concepts Used

- PL/SQL Block
- FOR LOOP
- IF...THEN Statement
- UPDATE Statement
- SELECT Statement
- DATE Functions
- MONTHS_BETWEEN()
- SYSDATE
- DBMS_OUTPUT.PUT_LINE
- COMMIT

---

## Database Tables Used

- Customers
- Loans

---

## Expected Output

### Scenario 1

```
Discount applied to Customer ID: 101
Discount applied to Customer ID: 105
```

### Scenario 2

```
Customer 103 promoted to VIP.
Customer 108 promoted to VIP.
```

### Scenario 3

```
Reminder: Dear John Doe, your Loan ID 1001 is due on 15-JUL-2026
Reminder: Dear Jane Smith, your Loan ID 1005 is due on 28-JUL-2026
```

---

## Learning Outcome

After completing this exercise, you will be able to:

- Write PL/SQL anonymous blocks.
- Use loops to process multiple records.
- Apply conditional logic using IF statements.
- Update database records programmatically.
- Work with date functions in Oracle PL/SQL.
- Display output using DBMS_OUTPUT.

---

## Conclusion

This exercise demonstrates how PL/SQL control structures can automate common banking operations such as applying discounts, identifying VIP customers, and generating loan reminders. These concepts form the foundation for developing more advanced database applications using Oracle PL/SQL.
