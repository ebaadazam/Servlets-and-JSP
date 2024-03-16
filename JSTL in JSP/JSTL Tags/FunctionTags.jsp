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

<!-- <c:set> is used to set the value of a string -->
<c:set var="string" value="Ebaad CarZWorld is an online hub for car enthusiasts to dive deep into the world and tech of cars"/>
<c:out value="${string}"/><br>

<!-- ${fn:length(collectionOrString)} returns the length of a collection or the number of characters in a string -->
Length of the String is: <c:out value="${fn:length(string)}"/><br>

<!-- ${fn:split(string, delimiters)} splits string into an array of strings based on the specified delimiters -->
<!-- Here we are splitting the string based on the space and when you split, it becomes an array -->
<c:forEach items="${fn:split(string, ' ')}" var="s">
${s}<br>
</c:forEach>

<!-- ${fn:join(array, separator)} joins an array of strings into a single string with each element separated by the specified separator -->
<c:set var="cars" value="bmw merc audi jaguar bentley koenigsegg"/>
<!-- Splitting the string into an array -->
<c:set var="carsArray" value="${fn:split(cars, ' ')}"/>
<!-- Joining the array elements with a comma -->
<c:out value="${fn:join(carsArray, ', ')}"/>


<!-- ${fn:indexOf(string, substring)} returns the index within string of the first occurrence of the specified substring -->
Index of 'enthusiasts' is: ${fn:indexOf(string, 'enthusiasts')}<br>

<!-- ${fn:contains(string, substring)} checks if the string contains the given substring or not -->
Does it contain it? (true or false): ${fn:contains(string, 'Ebaad')}<br>

<!-- ${fn:replace(string, old, new)} replaces all occurrences of a specified old string with a new string within the original string -->
Replacing car with vehicle: ${fn:replace(string, 'car', 'vehicle')}<br>

<!-- ${fn:substring(string, begin index, end index)} returns a new string that is a substring of string, starting from begin and extending to end index -->
SubString within the String: ${fn:substring(string, 37, 52)}<br>

<!-- ${fn:endsWith(string, suffix)} determines if string ends with the specified suffix -->
String EndsWith: ${fn:endsWith(string, 'cars')} <br>

<!-- ${fn:startsWith(string, prefix)} determines if string starts with the specified prefix -->
String StartsWith: ${fn:startsWith(string, 'cars')} <br>

<!-- ${fn:toLowerCase(string)} converts all of the characters in string to lower case -->
String in LowerCase: <c:out value="${fn:toLowerCase(string)}"/>

</body>
</html>
