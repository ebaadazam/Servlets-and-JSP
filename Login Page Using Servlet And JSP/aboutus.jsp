<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>This Page contains the information about the whole process of this mini Login Project using Servlet and JSP</h3>

<h4>
It contains the following pages: <br>
login.jsp <br>
home.jsp <br>
aboutus.jsp <br>
videos.jsp <br>
Login.java <br>
Logout.java <br><br>

In login.jsp page, we create the structure of the login page as per our requirements. And the moment we
click on the submit button from the login page the request will go to the Login.java file which is mentioned
in the form action in the structure of login.<br><br>

Now Login.java file is a servlet basically which will be used to verify our credentials at the time of login.
If the credentials are correct then we will be redirecting to the home.jsp page else it will take us to the
login page again. <br><br>

Now in home.jsp, we will maintain sessions as we do not want anyone to have access to home.jsp page without
being logged in. If one has logged in then it will have access to the home.jsp page and there will also be
a logout button on the home page on which if we click we will again be redirecting to the login page.<br><br>

In home.jsp page, we have also used headers so that it prevent the cache page to be appeared. If we want
security pages not to be cached then we must use headers in order to revalidate it. It is like.. if we are
logged in to and redirected to the home.jsp page. Now in home page if we click on log out button and press
back then it will show us again home page(basically a cached page) which is not right. Thats why we have 
used headers to prevent the cached page after we press back button. <br><br> 

Now in videos.jsp, we will again maintain session as we do not want anyone to have access to videos.jsp page also
if not logged in. If one has logged in then it will have access to the page.<br><br>
</h4>


</body>
</html>
