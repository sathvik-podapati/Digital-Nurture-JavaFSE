package com.cognizant.week1.task;

public class TaskManagement {

    private Task head;

    // Add Task
    public void addTask(Task task) {

        if (head == null) {
            head = task;
            return;
        }

        Task temp = head;

        while (temp.next != null) {
            temp = temp.next;
        }

        temp.next = task;

    }

    // Search Task
    public Task searchTask(int id) {

        Task temp = head;

        while (temp != null) {

            if (temp.getTaskId() == id)
                return temp;

            temp = temp.next;
        }

        return null;

    }

    // Display Tasks
    public void displayTasks() {

        Task temp = head;

        System.out.println("\nTask List:");

        while (temp != null) {

            System.out.println(temp);

            temp = temp.next;

        }

    }

    // Delete Task
    public void deleteTask(int id) {

        if (head == null)
            return;

        if (head.getTaskId() == id) {

            head = head.next;

            System.out.println("Task Deleted Successfully.");
            return;

        }

        Task current = head;

        while (current.next != null &&
                current.next.getTaskId() != id) {

            current = current.next;

        }

        if (current.next == null) {

            System.out.println("Task Not Found.");
            return;

        }

        current.next = current.next.next;

        System.out.println("Task Deleted Successfully.");

    }

}