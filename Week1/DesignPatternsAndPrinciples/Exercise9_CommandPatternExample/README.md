# Exercise 9 - Command Pattern

## Objective

Implement the Command Design Pattern to encapsulate requests as objects and execute commands through a remote control.

## Scenario

A remote control can execute different commands such as turning a light ON or OFF without directly interacting with the Light class.

## Project Structure

```
src/
└── com/
    └── cognizant/
        └── week1/
            └── command/
                ├── Command.java
                ├── Light.java
                ├── LightOnCommand.java
                ├── LightOffCommand.java
                ├── RemoteControl.java
                └── Main.java
```

## Design Pattern Used

**Command Pattern**

## Files

- Command.java
- Light.java
- LightOnCommand.java
- LightOffCommand.java
- RemoteControl.java
- Main.java

## Expected Output

```
Light is ON
Light is OFF
```

## Concepts Covered

- Command Pattern
- Interfaces
- Composition
- Encapsulation
- Loose Coupling
- Open/Closed Principle

## Advantages

- Decouples the sender from the receiver.
- Easy to add new commands.
- Improves flexibility and maintainability.
- Supports undo/redo functionality (in advanced implementations).

## Real-World Applications

- TV Remote Controls
- Menu Items in GUI Applications
- Text Editors (Undo/Redo)
- Task Scheduling
- Home Automation Systems
