# Exercise 5 - Task Management System

## Objective

Implement a Task Management System using a Singly Linked List.

## Scenario

Manage project tasks by adding, searching, displaying, and deleting tasks efficiently.

## Project Structure

```
src/
└── com/
    └── cognizant/
        └── week1/
            └── task/
                ├── Task.java
                ├── TaskManagement.java
                └── Main.java
```

## Data Structure Used

- Singly Linked List

## Operations

- Add Task
- Search Task
- Display Tasks
- Delete Task

## Time Complexity

| Operation | Complexity |
| --------- | ---------- |
| Add       | O(n)       |
| Search    | O(n)       |
| Traverse  | O(n)       |
| Delete    | O(n)       |

## Advantages

- Dynamic memory allocation.
- Easy insertion and deletion.
- No shifting of elements.

## Limitations

- Sequential access only.
- Extra memory required for pointers.

## Conclusion

Linked Lists are preferred over arrays when the number of elements changes frequently and efficient insertions or deletions are required.
