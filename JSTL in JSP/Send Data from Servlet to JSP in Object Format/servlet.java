package com.ebaad;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/servlet")
public class servlet extends HttpServlet {

	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	System.out.println("Servlet executed");
        List<Student> list = new ArrayList<>();
        list.add(new Student(1, "Ebaad"));
        list.add(new Student(2, "Sarim"));
        list.add(new Student(3, "Saad"));
        list.add(new Student(4, "Atif"));

        request.setAttribute("studs", list);
        RequestDispatcher rd = request.getRequestDispatcher("display.jsp");
        rd.forward(request, response);
    }
}

