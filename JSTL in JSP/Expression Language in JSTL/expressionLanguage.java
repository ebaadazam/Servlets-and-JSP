package com.ebaad;

import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/exp");
public class exp extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = "Ebaad Azam";
		
		request.setAttribute("label", name);
		
		RequestDispatcher rd = request.getRequestDispatcher("lang.jsp"); //calling a JSP File from the Servlet Java Class
		rd.forward(request, response);
				
	}

}

