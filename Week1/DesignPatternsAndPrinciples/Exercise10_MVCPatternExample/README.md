# Exercise 10 - MVC Pattern

## Objective

Implement the Model-View-Controller (MVC) Design Pattern to separate application data, user interface, and business logic.

## Scenario

A simple Student Management System demonstrates how the Controller updates the Model and instructs the View to display the latest data.

## Project Structure

```
src/
└── com/
    └── cognizant/
        └── week1/
            └── mvc/
                ├── Student.java
                ├── StudentView.java
                ├── StudentController.java
                └── Main.java
```

## Design Pattern Used

**Model-View-Controller (MVC)**

## Files

- Student.java (Model)
- StudentView.java (View)
- StudentController.java (Controller)
- Main.java

## Expected Output

```
Student Details
----------------
Name    : Rahul
Roll No : 101

Student Details
----------------
Name    : Rohit
Roll No : 101
```

## Concepts Covered

- MVC Pattern
- Encapsulation
- Separation of Concerns
- Getters and Setters
- Loose Coupling

## Advantages

- Easy to maintain.
- Separates UI, logic, and data.
- Improves code readability.
- Widely used in enterprise applications.

## Real-World Applications

- Spring MVC
- Java Swing
- Web Applications
- Android Apps
