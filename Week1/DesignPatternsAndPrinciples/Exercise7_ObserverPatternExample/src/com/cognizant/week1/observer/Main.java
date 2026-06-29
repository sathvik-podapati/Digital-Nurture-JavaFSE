package com.cognizant.week1.observer;

public class Main {

    public static void main(String[] args) {

        Stock tcsStock = new Stock();

        Observer mobile = new MobileApp();
        Observer web = new WebApp();

        tcsStock.registerObserver(mobile);
        tcsStock.registerObserver(web);

        tcsStock.setPrice(4200);

        tcsStock.setPrice(4350);

    }

}