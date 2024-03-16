<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <!-- <sql:setDataSource> tag is used to define a datasource for the database connections. It specifies the JDBC driver (com.mysql.jdbc.Driver), the database URL, and the credentials (user and password) required to connect to the MySQL database -->
    <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3307/dbName" user="root" password="0" />
    
    <!-- <sql:query> executes a SQL query (select * from tableName) using the previously defined datasource. The result of the query is stored in a variable named resultset -->
    <sql:query var="resultset" dataSource="${db }">
       select * from tableName
    </sql:query>


    <!-- The <c:forEach> tag iterates over the rows returned by the SQL query. Each row is temporarily stored in a variable named name for each iteration of the loop -->
    <c:forEach items="${resultset.rows }" var="record">
    <br>
    <c:out value="${record.stname}"></c:out>
    <c:out value="${record.strollno}"></c:out>    
    </c:forEach>
</body>
</html>
