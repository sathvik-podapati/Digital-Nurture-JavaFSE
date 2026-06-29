# Exercise 11 - Dependency Injection Pattern

## Objective

Implement the Dependency Injection Design Pattern to provide dependencies to a class from outside rather than creating them internally.

## Scenario

A CustomerService depends on a CustomerRepository. The repository implementation is injected through the constructor, promoting loose coupling.

## Project Structure

```
src/
└── com/
    └── cognizant/
        └── week1/
            └── dependencyinjection/
                ├── CustomerRepository.java
                ├── CustomerRepositoryImpl.java
                ├── CustomerService.java
                └── Main.java
```

## Design Pattern Used

**Dependency Injection (DI)**

## Files

- CustomerRepository.java
- CustomerRepositoryImpl.java
- CustomerService.java
- Main.java

## Expected Output

```
Customer Details Retrieved Successfully.
```

## Concepts Covered

- Dependency Injection
- Interfaces
- Constructor Injection
- Loose Coupling
- Dependency Inversion Principle (DIP)

## Advantages

- Improves code flexibility.
- Easy to replace implementations.
- Simplifies testing using mock objects.
- Promotes loose coupling.
- Foundation of Spring Framework.

## Real-World Applications

- Spring Framework
- Spring Boot
- Jakarta EE (CDI)
- Google Guice
