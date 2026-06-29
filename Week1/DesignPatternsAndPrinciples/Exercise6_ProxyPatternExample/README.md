# Exercise 6 - Proxy Pattern

## Objective

Implement the Proxy Design Pattern to provide controlled access to an image using lazy initialization.

## Scenario

A proxy object delays the creation of the real image until it is actually needed. This improves performance by avoiding unnecessary object creation.

## Project Structure

```
src/
└── com/
    └── cognizant/
        └── week1/
            └── proxy/
                ├── Image.java
                ├── RealImage.java
                ├── ProxyImage.java
                └── Main.java
```

## Design Pattern Used

**Proxy Pattern**

## Files

- Image.java
- RealImage.java
- ProxyImage.java
- Main.java

## Expected Output

```
Image object created.

Loading image from disk: Nature.jpg
Displaying image: Nature.jpg

Displaying image: Nature.jpg
```

## Concepts Covered

- Proxy Design Pattern
- Lazy Initialization
- Interfaces
- Composition
- Object Creation on Demand
- Performance Optimization

## Advantages

- Reduces memory usage.
- Improves performance.
- Controls access to objects.
- Supports lazy loading.

## Real-World Applications

- Image Gallery
- Google Drive
- Netflix
- Virtual Memory
- Hibernate Lazy Loading
