package com.cognizant.week1.sorting;

public class Main {

    public static void printOrders(Order[] orders) {

        for (Order order : orders) {
            System.out.println(order);
        }

    }

    public static void main(String[] args) {

        Order[] orders = {

                new Order(101, "Rahul", 3500),
                new Order(102, "Aman", 1500),
                new Order(103, "Sneha", 7000),
                new Order(104, "Priya", 2500)

        };

        System.out.println("Before Bubble Sort\n");

        printOrders(orders);

        SortingOperations.bubbleSort(orders);

        System.out.println("\nAfter Bubble Sort\n");

        printOrders(orders);

        Order[] orders2 = {

                new Order(101, "Rahul", 3500),
                new Order(102, "Aman", 1500),
                new Order(103, "Sneha", 7000),
                new Order(104, "Priya", 2500)

        };

        SortingOperations.quickSort(orders2, 0, orders2.length - 1);

        System.out.println("\nAfter Quick Sort\n");

        printOrders(orders2);

    }

}