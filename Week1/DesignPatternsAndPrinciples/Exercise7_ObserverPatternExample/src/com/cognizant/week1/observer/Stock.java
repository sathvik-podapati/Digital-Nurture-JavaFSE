package com.cognizant.week1.observer;

import java.util.ArrayList;
import java.util.List;

public class Stock implements Subject {

    private List<Observer> observers;
    private double price;

    public Stock() {
        observers = new ArrayList<>();
    }

    @Override
    public void registerObserver(Observer observer) {
        observers.add(observer);
    }

    @Override
    public void removeObserver(Observer observer) {
        observers.remove(observer);
    }

    @Override
    public void notifyObservers() {

        for (Observer observer : observers) {
            observer.update(price);
        }

    }

    public void setPrice(double price) {

        this.price = price;

        System.out.println("\nStock price changed to ₹" + price);

        notifyObservers();
    }

}