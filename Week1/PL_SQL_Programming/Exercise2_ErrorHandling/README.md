# Exercise 2 – Error Handling

## Objective

Learn how to handle runtime errors in Oracle PL/SQL using the EXCEPTION block.

## Scenarios

### Scenario 1

Transfer funds safely between two accounts.
If the source account has insufficient balance, rollback the transaction and display an error message.

### Scenario 2

Update an employee's salary by a given percentage.
If the employee does not exist, handle the exception and display an appropriate error message.

### Scenario 3

Insert a new customer into the Customers table.
If a customer with the same CustomerID already exists, prevent the insertion and display an error message.

## PL/SQL Concepts Covered

- Stored Procedures
- Exception Handling
- SELECT INTO
- UPDATE
- INSERT
- COMMIT
- ROLLBACK
- SQLERRM
- RAISE_APPLICATION_ERROR
- NO_DATA_FOUND
- DUP_VAL_ON_INDEX

## Expected Learning Outcome

After completing this exercise, you will be able to:

- Create stored procedures
- Handle runtime exceptions
- Maintain transaction consistency using COMMIT and ROLLBACK
- Write robust PL/SQL programs
