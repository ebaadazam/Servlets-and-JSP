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
   // Without using the Expression Language 
   String name = request.getAttribute("label").toString();
   out.println(name);
%>

<!-- This is the Expression Language. It will fetch the value of label that we had set in the Servlet Class -->
@{label}

</body>
</html>
