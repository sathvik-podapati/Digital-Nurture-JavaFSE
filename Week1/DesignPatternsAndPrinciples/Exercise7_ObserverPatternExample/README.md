# Exercise 7 - Observer Pattern

## Objective

Implement the Observer Design Pattern to notify multiple observers whenever the state of an object changes.

## Scenario

A stock market application updates all registered applications whenever the stock price changes.

## Project Structure

```
src/
└── com/
    └── cognizant/
        └── week1/
            └── observer/
                ├── Observer.java
                ├── Subject.java
                ├── Stock.java
                ├── MobileApp.java
                ├── WebApp.java
                └── Main.java
```

## Design Pattern Used

Observer Pattern

## Concepts Covered

- Observer Pattern
- Interfaces
- List Collection
- Loose Coupling
- Event Notification

## Output

```
Stock price changed to ₹4200.0
Mobile App: Stock price updated to ₹4200.0
Web App: Stock price updated to ₹4200.0

Stock price changed to ₹4350.0
Mobile App: Stock price updated to ₹4350.0
Web App: Stock price updated to ₹4350.0
```
