package com.izdebski;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class FirstServlet extends HttpServlet {

    public FirstServlet(){
        super();
        System.out.println("Inside the no-arg constructor():::::");
    }

    //doPost
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String firstName = req.getParameter("fname");
        String lastName = req.getParameter("lname");
        String fullName = firstName + lastName;
        req.setAttribute("name", fullName);
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