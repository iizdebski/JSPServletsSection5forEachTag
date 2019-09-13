package com.izdebski;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

public class FirstServlet extends HttpServlet {

    public FirstServlet(){
        super();
        System.out.println("Inside the no-arg constructor():::::");
    }

    //doPost
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Student> list = new ArrayList<Student>();
        Student student = new Student();
        student.setName("Ivan Petrenko");
        student.setAge(34);
        student.setLocation("Ternopil");
        list.add(student);

        student = new Student();
        student.setName("Monica");
        student.setAge(25);
        student.setLocation("USA");

        list.add(student);
        req.setAttribute("list", list);



        String firstName = req.getParameter("fname");
        String lastName = req.getParameter("lname");
        String fullName = firstName + lastName;

        String[] countries = {"India", "Japan", "China", "America", "South Africa"};

        req.setAttribute("name", fullName);
        req.setAttribute("student", student);
        req.setAttribute("countries", countries);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/output.jsp");

        dispatcher.forward(req, resp);
    }

    @Override
    public void init() throws ServletException {
        super.init();
        System.out.println("Inside the init():::::");
        System.out.println("Inside the init():::::");
    }
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.service(req, resp);
        System.out.println("Inside the service():::::");
    }
    @Override
    public void destroy() {

        super.destroy();
        System.out.println("Inside the destroy():::::");
    }
}