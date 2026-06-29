package com.cognizant.week1.dependencyinjection;

public class CustomerService {

    private CustomerRepository repository;

    public CustomerService(CustomerRepository repository) {
        this.repository = repository;
    }

    public void getCustomerDetails() {
        repository.displayCustomer();
    }

}