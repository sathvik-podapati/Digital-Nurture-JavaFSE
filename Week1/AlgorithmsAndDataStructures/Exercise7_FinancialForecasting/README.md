# Exercise 7 - Financial Forecasting

## Objective

Implement a recursive algorithm to predict the future value of an investment using a fixed annual growth rate.

## Scenario

A financial institution wants to estimate the future value of an investment over a number of years.

## Project Structure

```
src/
└── com/
    └── cognizant/
        └── week1/
            └── forecasting/
                ├── FinancialForecast.java
                └── Main.java
```

## Algorithm Used

- Recursion

## Formula

Future Value = Current Value × (1 + Growth Rate)^Years

## Time Complexity

- **O(n)**

## Space Complexity

- **O(n)** (recursive call stack)

## Advantages

- Simple and easy to understand.
- Demonstrates recursive problem solving.

## Limitation

- Uses additional stack memory.
- For very large values of `years`, an iterative solution is more efficient.

## Conclusion

This program demonstrates recursion by repeatedly applying the annual growth rate until the required number of years is reached.
