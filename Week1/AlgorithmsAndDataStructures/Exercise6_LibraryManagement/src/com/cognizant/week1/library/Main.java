package com.cognizant.week1.library;

import java.util.Arrays;
import java.util.Comparator;

public class Main {

    public static void main(String[] args) {

        Book[] books = {

                new Book(101, "Java Programming", "James Gosling"),
                new Book(102, "Data Structures", "Mark Allen"),
                new Book(103, "Operating Systems", "Silberschatz"),
                new Book(104, "Computer Networks", "Andrew Tanenbaum"),
                new Book(105, "Database Systems", "Elmasri")

        };

        System.out.println("Linear Search\n");

        Book book = SearchOperations.linearSearch(books,
                "Operating Systems");

        if (book != null)
            System.out.println(book);
        else
            System.out.println("Book Not Found.");

        Arrays.sort(books,
                Comparator.comparing(Book::getTitle));

        System.out.println("\nBinary Search\n");

        book = SearchOperations.binarySearch(books,
                "Operating Systems");

        if (book != null)
            System.out.println(book);
        else
            System.out.println("Book Not Found.");

    }

}