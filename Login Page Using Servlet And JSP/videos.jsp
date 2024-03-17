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
        // If User tries to access the videos page without being logged in then redirect the user to Login Page 
		if(session.getAttribute("username") == null) {
			response.sendRedirect("login.jsp");
		} 
	%>
	<iframe width="560" height="315" src="https://www.youtube.com/embed/4XTsAAHW_Tc?si=wS1Fxnltj3GWYhfa" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</body>
</html>
