package com.cognizant.week1.adapter;

public class PayPalAdapter implements PaymentProcessor {
    private PayPalGateway payPalGateway; // compostion : instead of inheritance we are using composition to use the
                                         // functionality of PayPalGateway class

    public PayPalAdapter() {
        this.payPalGateway = new PayPalGateway();
    }

    @Override
    public void processPayment(double amount) {
        payPalGateway.makePayment(amount);
    }
}
