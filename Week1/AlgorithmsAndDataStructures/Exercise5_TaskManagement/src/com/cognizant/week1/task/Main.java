package com.cognizant.week1.task;

public class Main {

    public static void main(String[] args) {

        TaskManagement manager = new TaskManagement();

        manager.addTask(new Task(101, "Design UI", "Pending"));
        manager.addTask(new Task(102, "Develop Backend", "In Progress"));
        manager.addTask(new Task(103, "Testing", "Pending"));

        manager.displayTasks();

        System.out.println("\nSearching Task 102");

        Task task = manager.searchTask(102);

        if (task != null)
            System.out.println(task);
        else
            System.out.println("Task Not Found.");

        manager.deleteTask(102);

        manager.displayTasks();

    }

}