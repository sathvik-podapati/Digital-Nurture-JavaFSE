package com.cognizant.week1.dependencyinjection;

public class CustomerRepositoryImpl implements CustomerRepository {

    @Override
    public void displayCustomer() {

        System.out.println("Customer Details Retrieved Successfully.");

    }

}