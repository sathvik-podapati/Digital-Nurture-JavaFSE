package com.cognizant.week1.search;

import java.util.Arrays;
import java.util.Comparator;

public class Main {

    public static void main(String[] args) {

        Product[] products = {

                new Product(101, "Laptop", "Electronics"),
                new Product(102, "Keyboard", "Electronics"),
                new Product(103, "Mouse", "Electronics"),
                new Product(104, "Printer", "Office"),
                new Product(105, "Tablet", "Electronics")

        };

        System.out.println("Linear Search");

        Product product = SearchOperations.linearSearch(products, "Mouse");

        if (product != null)
            System.out.println(product);
        else
            System.out.println("Product Not Found");

        Arrays.sort(products,
                Comparator.comparing(Product::getProductName));

        System.out.println("\nBinary Search");

        product = SearchOperations.binarySearch(products, "Mouse");

        if (product != null)
            System.out.println(product);
        else
            System.out.println("Product Not Found");

    }

}