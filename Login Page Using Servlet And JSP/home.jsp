<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<!-- Log Out button Code -->
<style>
        .logout-button {
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 12px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 12px;
            transition-duration: 0.4s;
        }

        .logout-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

	<%
	    // If we want security pages not to be cached then we must use headers in order to revalidate it
	    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	    response.setHeader("Pragma", "no-cache");
	    response.setHeader("Expires", "0");
	
	    // If User tries to access the home page without being logged in then redirect the user to Login Page 
		if(session.getAttribute("username") == null) {
			response.sendRedirect("login.jsp");
		} 
	%>

	Hello Ebaad You've been redirected to the Home Page
	
	<!-- Log Out button Code -->
	<form action="Logout" method="post">
        <input type="submit" value="Log Out" class="logout-button">
    </form>
    <!-- When the user clicks on the Logout Button on the Home Page, it will call the Logout.java Servlet -->

</body>
</html>
