<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	  // using the request object of RequestDispatcher
	  request.setAttribute("name", "Ebaad Azam");
	%>
	
	<!-- Using Expression Language to fetch the value of name variable set by using the setAttribute() method  -->
	<h3> Name: ${name} </h3>
	
	<%
	  // using the session object of HttpSession
	  session.setAttribute("session_name", "Java Developer");
	%>
	<h3> Designation: ${session_name} </h3>
	
	<h3>0-1 Years of Experience</h3>
	
	<h3>Total DSA Problems Solved: ${50+20} </h3>
</body>
</html>
