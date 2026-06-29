package com.cognizant.week1.decorator;

public class Main {

    public static void main(String[] args) {

        // Basic Notification
        Notifier notifier = new BasicNotifier();
        notifier.send("Meeting at 10 AM");

        System.out.println();

        // Basic + Email
        notifier = new EmailNotifier(new BasicNotifier());
        notifier.send("Meeting at 10 AM");

        System.out.println();

        // Basic + Email + SMS
        notifier = new SMSNotifier(
                new EmailNotifier(
                        new BasicNotifier()));
        notifier.send("Meeting at 10 AM");

        System.out.println();

        // Basic + Email + SMS + Slack
        notifier = new SlackNotifier(
                new SMSNotifier(
                        new EmailNotifier(
                                new BasicNotifier())));
        notifier.send("Meeting at 10 AM");
    }
}