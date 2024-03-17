package com.ebaad;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

public class Logout extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		// When the user is logged out from the home page, remove its credentials
		session.removeAttribute("username");
		session.invalidate();
		
		// When the user clicks on the log out button, redirect it to the login page again
		response.sendRedirect("login.jsp");
		
	}

}

