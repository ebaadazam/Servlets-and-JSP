// In case of ServletConfig, we ca also specify the initial values like the ServletContext. 
// But the difference is that you might have multiple servlets in your application/ ServletContext is an object shared by all
// the servlets but if you want different configuration for different servlets, go for ServletConfig().

package com.ebaad.azam;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// The AddServletClass becomes a servlet class when you extend it by HttpServlet
public class MyServlet extends HttpServlet {
	
	// service() has to be implemented in order to take the request and get response
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

    PrintWriter out = response.getWriter();
    out.print("Hello ");

    ServletConfig cfg = getServletConfig();

    // getInitParameter() will give you a value of an attribute i.e, name that is specified here. We also could have fetched
    // the value of age instead of name
    String str = cfg.getInitParameter("name");
	}
}

// Output will be- Hello Sarim
