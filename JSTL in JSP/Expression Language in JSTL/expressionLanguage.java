package com.ebaad;

import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/expressionLanguage");
public class expressionLanguage extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = "Ebaad Azam";
		
		request.setAttribute("label", name);
		
		RequestDispatcher rd = request.getRequestDispatcher("expressionLanguage.jsp"); //calling a JSP File from the Servlet Java Class
		rd.forward(request, response);
				
	}

}

