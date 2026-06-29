package com.cognizant.week1.adapter;

public class Main {
    public static void main(String[] args) {
        PaymentProcessor stripePaymentProcessor = new StripeAdapter();
        stripePaymentProcessor.processPayment(100.0);

        PaymentProcessor payPalPaymentProcessor = new PayPalAdapter();
        payPalPaymentProcessor.processPayment(200.0);
    }
}
