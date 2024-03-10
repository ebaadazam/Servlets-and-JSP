// This Servlet will fetch the value of the attributes specified in the web.xml file by using the object of the object of the 
// ServletContext. We dont have to crerate the ServletContext object as it is provided by the Tomcat. The moment you run the
// application, it will give you ServletContext Object and the way you can access it by saying getInitParameter(). 

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

    ServletContext ctx = getServletContext();

    // getInitParameter() will give you a value of an attribute i.e, name that is specified here. We also could have fetched
    // the value of age instead of name
    String str = ctx.getInitParameter("name");
	}
}

// Output will be- Hello Ebaad
