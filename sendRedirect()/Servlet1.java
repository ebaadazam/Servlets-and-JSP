// This Servlet will add two numbers and redirect the request to another Servlet using sendRedirect() method for calculating its
// square. It is also the concept of URL Rewriting
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
		
		res.sendRedirect("sq?k=" + k);
		// Above is the concept of URL Rewriting as we are changing the URL. This 
		// comes under session management where we can transfer data from one Servlet
		// to another with the help of three things- session, cookies and url rewriting
	}

}
