// This Servlet will calculate the Square of the resulted sum
package com.ebaad.azam;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class SquareServletClass extends HttpServlet {
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException {
		int k = (int) req.getAttribute("ans"); //this getAttribute() is used to catch the value sent by the Servlet from setAttribute() 
		k = k * k; // calculating the square

    // PrintWriter is for printing the output on the page 
		PrintWriter pw = res.getWriter();
		pw.println("Result is "+k);
	}
}

