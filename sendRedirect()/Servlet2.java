// This Servlet will add two numbers and forward the request to another Servlet for calculating its square using requestDispatcher()
// This is a Java Class to calculate the square two numbers

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
		
	  int k = Integer.parseInt(req.getParameter("k")); // taking the value in k and converting it into integer
          k = k * k;

	   // Printing the message on the browser
	   PrintWriter pw = res.getWriter();
	   pw.println("The Result is " + k);
	}

}
