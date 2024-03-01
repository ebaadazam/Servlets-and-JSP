// This is a Java Class to add two numbers using Cookie

package com.ebaad.azam;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
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
		
		Cookie cookie = new Cookie("ans", k+""); // we wrote k+" " coz we are making it a string as cookie is in the string form
		res.addCookie(cookie); // adding a cookie to the response that is going to send to another Servlet
		
		res.sendRedirect("sq");
		}

}

