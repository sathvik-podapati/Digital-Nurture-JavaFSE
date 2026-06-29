# Exercise 4 - Adapter Pattern

## Objective

Implement the Adapter Design Pattern to integrate different payment gateways through a common interface.

## Scenario

Different payment gateways expose different method names. The Adapter Pattern allows the application to use a common interface (`PaymentProcessor`) while internally translating calls to the appropriate gateway methods.

## Files

- PaymentProcessor.java
- PayPalGateway.java
- StripeGateway.java
- PayPalAdapter.java
- StripeAdapter.java
- Main.java

## Design Pattern Used

Adapter Pattern

## Output

```
Payment of ₹100.0 processed using Stripe.
Payment of ₹200.0 processed using PayPal.
```

## Concepts Covered

- Adapter Pattern
- Interfaces
- Composition
- Polymorphism
- Loose Coupling
