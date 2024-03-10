<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- Whatever we write within directive tags will directly go to the import package -->
<%@ page import="java.util.ArrayList, java.util.Scanner, java.util.Iterator" %>

<!-- using include directive, we can simply use the variables and the methods of some other jsp files into our current jsp file -->
<%@ include file="sample.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dummy Java Website</title>
</head>
<body bgcolor='gray'>
<center><h2>Welcome to the Garage</h2></center>

<!-- Whatever we write within declaration tags will go inside the Servlet Class but outside the service() method. It is mainly used for variable and method declarations-->
<%! int value = 15; %>

<!-- Whatever we write within scriplet tags will go inside the service() method of Servlet Class -->
<%
ArrayList<String> list = new ArrayList<String>(5);
out.println("<h2>The Details of the Customers: </h2>");
list.add("Ebaad Azam");
list.add("Hashsham Malik");
list.add("Saad Muazzam");
list.add("Mohammad Atif Chussa");
list.add("Abdul Ahad Chussa");

Iterator<String> it = list.iterator();
while (it.hasNext()) {
	out.println(it.next());
	out.println("<br>");
}

int i=30, j=20;
int sum =  i+j;
out.print("<h1>The Total Cars that have been serviced here: ");
out.print(sum);
out.print("</h1>");

out.println("The Variable Value of the File named Sample.jsp is shown here with the help of include() method: "+ varOfSample);
out.println("<br>");
%>

<!-- Whatever we write within expression tags will go inside the out.println() statement of the PrintWriter Class -->
<%= 100+34 %>

<!-- Whatever we write outside any tags will just normally display on the page -->
<h3> <ul>
<li>Hyundai</li>
<li>Volkswagon</li>
<li>Aston Martin</li>
<li>Mercedes Maybach</li>
<li>Jaguar</li>
</ul> </h3>

</body>
</html>
