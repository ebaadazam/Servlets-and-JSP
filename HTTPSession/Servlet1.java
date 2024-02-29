// This Servlet will add two numbers and redirect the request to another Servlet for calculating its square using HTTPSession Interface and sendRedirect() method.
// This is a Java Class to add two numbers

package com.ebaad.azam;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// The AddServletClass becomes a servlet class when you extend it by HttpServlet
public class AddServletClass extends HttpServlet {
	
	// service() has to be implemented in order to take the request and get response
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		
		// getting the value of num1 in i variable and converting it into Integer as getparameter() accepts string
		int i = Integer.parseInt(req.getParameter("num1"));
		
		// getting the value of num2 in j variable and converting it into Integer as getparameter() accepts string
		int j = Integer.parseInt(req.getParameter("num2"));
		
		int k = i+j; //stores the sum of two numbers

    HttpSession session = req.getSession(); // creating the object of session class
		session.setAttribute("ans", k); // getting some data in req object as it is being forwarded to another servlet

    // redirecting the response to Servlet2
		res.sendRedirect("sq");
	}

}
