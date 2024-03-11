
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- The errorPage directive specifies that the JSP file i.e, errors.jsp will be invoked if an exception occurs. The 'errors.jsp' specified in the errorPage directive must include 'isErrorPage' -->
<%@ page errorPage="errors.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor='green'>

 <%
	int i = 10;
	int j = 10;
	int res = i/j; //this will generate divide by zero exception
	out.println("<h3>Result is " + res);
	out.println("</h3>");
 %>

</body>
</html>
