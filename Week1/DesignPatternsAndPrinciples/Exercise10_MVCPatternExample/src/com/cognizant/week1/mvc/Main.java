package com.cognizant.week1.mvc;

public class Main {

    public static void main(String[] args) {

        Student model = new Student("Rahul", "101");

        StudentView view = new StudentView();

        StudentController controller = new StudentController(model, view);

        controller.updateView();

        System.out.println();

        controller.setStudentName("Rohit");

        controller.updateView();

    }

}