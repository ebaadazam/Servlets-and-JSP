package com.ebaad.azam;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class SquareServletClass extends HttpServlet {
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		int k=0;
		
		Cookie cookies[] = req.getCookies();
		// Above we are using an array because we may have a list of cookies instead of a single
		// cookie. Also the method name is getCookies() that means there can be more than one cookie
		// thats whywe used an array to store the values
		
		// Iterating through the cookies
		for(Cookie c : cookies) {
			if (c.getName().equals("ans")) {
				k = Integer.parseInt(c.getValue());
			}
		}
		
		k=k*k; // calculating the square
		
		PrintWriter pw = res.getWriter();
		pw.println("Result is "+k);
	}
}

