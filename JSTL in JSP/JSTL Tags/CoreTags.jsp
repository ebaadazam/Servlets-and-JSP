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

<!-- The <c:out> tag is used to display content on a JSP page. It automatically escapes HTML and XML tags -->
<c:out value="Welcome to the JSP Page for studying the example of Core tags"/><br>

<!-- The <c:set> tag is used to set the value of a variable that can be used later in the page or in a specified scope -->
<c:set var="lang" value="Java is the language"/><br>
<c:set var="lang2" value="Java is the language"/><br>

<!-- Fetching the value of lang variable using Expression Language -->
Fetching the value using EL: ${lang}
<br>

<!--The <c:if> tag is used for conditional rendering based on the evaluation of an expression -->
<c:if test="${lang == lang2}">
    <c:out value="Both the Strings are equal" /><br>
</c:if>

<!-- <c:choose>, <c:when> and <c:otherwise> tags work together to support multiple conditional operations, similar to if-else-if statements in Java -->
<c:choose>
    <c:when test="${lang != lang2}">
        <c:out value="Both the Strings are equal" />
    </c:when>
    <c:otherwise>
        <c:out value="The Strings are not equal" />
    </c:otherwise>
</c:choose>

<!-- The <c:set> tag is used to set the value of a variable that can be used later in the page or in a specified scope -->
<c:set var="cars" value="Hyundai, Toyota, Mercedes, Bentley, Rolls Royce"/>

<!-- The <c:forEach> tag is used for iterating over a collection, array, Map, or numeric range -->
<c:forEach var="cars" items="${cars}">
    <p>${cars}</p>
</c:forEach>


</body>
</html>
