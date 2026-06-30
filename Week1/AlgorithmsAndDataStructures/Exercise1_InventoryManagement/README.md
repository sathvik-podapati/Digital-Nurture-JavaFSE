# Exercise 1 - Inventory Management System

## Objective

Develop an inventory management system using Java and HashMap to efficiently manage product records.

## Scenario

A warehouse stores products and needs to perform add, update, delete, and display operations efficiently.

## Project Structure

```
src/
└── com/
    └── cognizant/
        └── week1/
            └── inventory/
                ├── Product.java
                ├── InventoryManager.java
                └── Main.java
```

## Data Structure Used

**HashMap<Integer, Product>**

## Operations

- Add Product
- Update Product
- Delete Product
- Display Inventory

## Time Complexity

| Operation | Complexity |
| --------- | ---------- |
| Add       | O(1)       |
| Update    | O(1)       |
| Delete    | O(1)       |
| Search    | O(1)       |
| Display   | O(n)       |

## Advantages

- Fast lookup using product ID.
- Efficient insertion and deletion.
- Scalable for large inventories.
- Easy to maintain.

## Conclusion

HashMap provides efficient inventory management by offering constant-time average performance for most operations.
