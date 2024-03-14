<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:out value="Welcome to the JSP Page for studying the example of Core tags"/><br>


<c:set var="lang" value="Java is the language"/><br>
<c:set var="lang2" value="Java is the language"/><br>


Fetching the value using EL: ${lang}
<br>


<c:if test="${lang == lang2}">
    <c:out value="Both the Strings are equal" /><br>
</c:if>


<c:choose>
    <c:when test="${lang != lang2}">
        <c:out value="Both the Strings are equal" />
    </c:when>
    <c:otherwise>
        <c:out value="The Strings are not equal" />
    </c:otherwise>
</c:choose>


<c:set var="cars" value="Hyundai, Toyota, Mercedes, Bentley, Rolls Royce"/>

<c:forEach var="cars" items="${cars}">
    <p>${cars}</p>
</c:forEach>


</body>
</html>
