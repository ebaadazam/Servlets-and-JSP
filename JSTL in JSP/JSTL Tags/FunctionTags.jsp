<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<c:set var="string" value="Ebaad CarZWorld is an online hub for car enthusiasts to dive deep into the world and tech of cars"/>
<c:out value="${string}"/><br>


Length of the String is: <c:out value="${fn:length(string)}"/><br>


<c:forEach items="${fn:split(string, ' ')}" var="s">
${s}<br>
</c:forEach>


Index of 'enthusiasts' is: ${fn:indexOf(string, 'enthusiasts')}<br>


Does it contain it? (true or false): ${fn:contains(string, 'Ebaad')}<br>


Replacing car with vehicle: ${fn:replace(string, 'car', 'vehicle')}<br>


SubString within the String: ${fn:substring(string, 37, 52)}<br>


String EndsWith: ${fn:endsWith(string, 'cars')} <br>


String StartsWith: ${fn:startsWith(string, 'cars')} <br>


String in LowerCase: <c:out value="${fn:toLowerCase(string)}"/>

</body>
</html>
