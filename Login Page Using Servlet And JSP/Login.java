package com.ebaad;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

public class Login extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Verifying the credentials for LogIn
		String uname = request.getParameter("name");
		String upass = request.getParameter("pass");
		
		if (uname.equals("Ebaad Azam") && upass.equals("ebaadazam")) {
			HttpSession session = request.getSession();
			
			// Storing the user data in session
			session.setAttribute("username", session);
			
			// Sending the response to home page
			response.sendRedirect("home.jsp");
		}
		else {
			response.sendRedirect("login.jsp");
		}
		
	}

	private PrintWriter getWriter() {
		// TODO Auto-generated method stub
		return null;
	}
}

