package com.cognizant.week1.employee;

public class Main {

    public static void main(String[] args) {

        EmployeeManagement manager = new EmployeeManagement(5);

        manager.addEmployee(new Employee(101, "Rahul", "Manager", 65000));
        manager.addEmployee(new Employee(102, "Sneha", "Developer", 55000));
        manager.addEmployee(new Employee(103, "Aman", "Tester", 45000));

        manager.displayEmployees();

        System.out.println("\nSearching Employee 102");

        Employee employee = manager.searchEmployee(102);

        if (employee != null)
            System.out.println(employee);
        else
            System.out.println("Employee Not Found.");

        manager.deleteEmployee(102);

        manager.displayEmployees();

    }

}