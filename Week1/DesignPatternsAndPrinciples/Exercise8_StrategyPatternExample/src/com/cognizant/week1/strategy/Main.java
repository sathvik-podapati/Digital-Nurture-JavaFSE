package com.cognizant.week1.strategy;

public class Main {

    public static void main(String[] args) {

        PaymentContext context = new PaymentContext();

        context.setStrategy(new CreditCardPayment());
        context.makePayment(2500);

        context.setStrategy(new PayPalPayment());
        context.makePayment(5000);

    }

}