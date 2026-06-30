package com.cognizant.week1.inventory;

public class Main {

    public static void main(String[] args) {

        InventoryManager manager = new InventoryManager();

        Product p1 = new Product(101, "Laptop", 10, 65000);

        Product p2 = new Product(102, "Mouse", 50, 800);

        Product p3 = new Product(103, "Keyboard", 20, 1500);

        manager.addProduct(p1);
        manager.addProduct(p2);
        manager.addProduct(p3);

        manager.displayProducts();

        manager.updateProduct(102, 60, 850);

        manager.displayProducts();

        manager.deleteProduct(103);

        manager.displayProducts();

    }

}