# Exercise 8 - Strategy Pattern

## Objective

Implement the Strategy Design Pattern to allow selecting different payment methods at runtime.

## Scenario

An online payment system supports multiple payment methods such as Credit Card and PayPal. The payment method can be changed dynamically without modifying the payment processing logic.

## Project Structure

```
src/
└── com/
    └── cognizant/
        └── week1/
            └── strategy/
                ├── PaymentStrategy.java
                ├── CreditCardPayment.java
                ├── PayPalPayment.java
                ├── PaymentContext.java
                └── Main.java
```

## Design Pattern Used

**Strategy Pattern**

## Files

- PaymentStrategy.java
- CreditCardPayment.java
- PayPalPayment.java
- PaymentContext.java
- Main.java

## Expected Output

```
Paid ₹2500.0 using Credit Card.
Paid ₹5000.0 using PayPal.
```

## Concepts Covered

- Strategy Pattern
- Interfaces
- Runtime Polymorphism
- Composition
- Loose Coupling
- Open/Closed Principle

## Advantages

- Easily switch algorithms at runtime.
- Eliminates complex if-else statements.
- Makes code extensible and maintainable.
- Promotes loose coupling.

## Real-World Applications

- Payment Gateways
- Sorting Algorithms
- Data Compression
- Authentication Mechanisms
- Route Planning Applications

## Conclusion

The Strategy Pattern encapsulates different algorithms into separate classes and allows the client to choose the required behavior at runtime without changing existing code.
