package com.cognizant.week1.strategy;

public class PayPalPayment implements PaymentStrategy {

    @Override
    public void pay(double amount) {

        System.out.println("Paid ₹" + amount + " using PayPal.");

    }

}