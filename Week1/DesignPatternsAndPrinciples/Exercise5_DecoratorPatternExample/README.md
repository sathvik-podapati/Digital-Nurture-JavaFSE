# Exercise 5 - Decorator Pattern

## Objective

Implement the Decorator Design Pattern to dynamically add notification features such as Email, SMS, and Slack without modifying the existing notification class.

## Scenario

A notification system initially sends only a basic notification. Additional notification channels like Email, SMS, and Slack are added dynamically using decorators, allowing flexible combinations of features.

## Project Structure

```
src/
└── com/
    └── cognizant/
        └── week1/
            └── decorator/
                ├── Notifier.java
                ├── BasicNotifier.java
                ├── NotifierDecorator.java
                ├── EmailNotifier.java
                ├── SMSNotifier.java
                ├── SlackNotifier.java
                └── Main.java
```

## Design Pattern Used

**Decorator Pattern**

## Files

- **Notifier.java** - Common interface for all notification types.
- **BasicNotifier.java** - Sends a basic notification.
- **NotifierDecorator.java** - Abstract decorator that wraps another notifier.
- **EmailNotifier.java** - Adds email notification functionality.
- **SMSNotifier.java** - Adds SMS notification functionality.
- **SlackNotifier.java** - Adds Slack notification functionality.
- **Main.java** - Demonstrates different combinations of decorators.

## Expected Output

```
Basic Notification: Meeting at 10 AM

Basic Notification: Meeting at 10 AM
Sending Email: Meeting at 10 AM

Basic Notification: Meeting at 10 AM
Sending Email: Meeting at 10 AM
Sending SMS: Meeting at 10 AM

Basic Notification: Meeting at 10 AM
Sending Email: Meeting at 10 AM
Sending SMS: Meeting at 10 AM
Sending Slack Notification: Meeting at 10 AM
```

## Concepts Covered

- Decorator Design Pattern
- Interfaces
- Abstract Classes
- Inheritance
- Composition
- Method Overriding
- Runtime Object Composition
- Loose Coupling
- Open/Closed Principle (OCP)

## Advantages

- Dynamically adds new functionality.
- Avoids creating a large number of subclasses.
- Promotes code reusability.
- Follows the Open/Closed Principle.
- Allows flexible combinations of features.

## Real-World Applications

- Notification Systems (Email, SMS, Push Notifications)
- Java I/O Streams (`BufferedReader`, `BufferedInputStream`)
- GUI Components
- Logging Frameworks
- Security Filters

## Conclusion

The Decorator Pattern allows responsibilities to be added to objects dynamically by wrapping them with decorator classes. It provides a flexible alternative to subclassing and is widely used in enterprise Java applications.
