Servlets and JavaServer Pages (JSP) are both Java technologies used for building web applications. Despite serving similar purposes, they have different use cases and strengths. Understanding both allows for the effective development of dynamic web applications.<br>

<h4><b>Servlets</b></h4>
<b>Definition</b> - Servlets are Java programs that run on a web server. They act as a middle layer between requests coming from a web browser or other HTTP client and databases or applications on the HTTP server.Servlets handle business logic, the servlet takes requests from the client, performs the necessary processing (like talking to a database), and populates data objects<br>
<b>How They Work</b> - When a web server receives a request for a servlet, it generates an instance of the servlet and calls its service method, passing request and response objects. Servlets can override the doGet or doPost methods (among others) to handle GET or POST requests specifically.<br>
<b>Use Cases</b> - Servlets are well-suited for handling complex processing, such as form data processing, database manipulation, and invoking other business logic.<br>
<b>Advantages</b> - They are powerful for controlling the web page generation process and handling the business logic in a web application.<br><br>

<h4><b>JSP</b></h4>
<b>Definition</b> - JSP is a technology that helps software developers create dynamically generated web pages based on HTML, XML, or other document types. Once the servlet has completed its processing, it forwards the request to a JSP page. The JSP page uses the JavaBeans set by the servlet to dynamically generate HTML and present the data. It allows Java code and certain predefined actions to be interleaved with static web markup content, with the resulting page being compiled and executed on the server to deliver an HTML or XML document to the client.<br>
<b>How They Work</b> - A JSP page is essentially a web page with traditional markup (like HTML) and embedded Java code. The Java code is processed on the server, and it can dynamically generate content before the page is returned to the client's browser.<br>
<b>Use Cases</b> - JSP is typically used for presenting dynamic content and views. It can incorporate JavaBeans or custom tags to encapsulate complex logic, keeping the presentation layer separate from business logic.<br>
<b>Advantages</b> - Easier to write and maintain than servlets for pages where there's a lot of presentation logic. JSP allows web designers and developers to work together more effectively by separating the presentation layer from business logic.
Integration of Servlets and JSP<br><br>

<h4><b>Components of Servlet & JSP:- </b></h4>

<h4><b>1. Calling a Servlet from another Servlet</b></h4>

There can be several ways to call a servlet from another servlet in Java, depending upon the specific requirements of your application and the behaviour you want to implement<br>
The two main approaches are <b>Forwarding</b> and <b>Redirection</b> which can be done using <b>RequestDispatcher</b> interface for forwarding and <b>HttpServletResponse</b> Interface for redirection.<br>

<b>Forwarding (Server-Side)</b> is done on the server-side, meaning the client is unaware of the actual servlet that processed the request. This method is useful when you want to keep the request within the server without informing the client about the internal processing servlet.<br>

<b>Redirection (Client-Side)</b> sends a response back to the client(browser) instructing it to make a new request to another servlet. This method is useful when you want to completely switch contexts, such as after submitting a form and redirecting to a different page to prevent form resubmission.<br><br>


<b>Using RequestDispatcher:</b> You can use the RequestDispatcher interface to forward a request from one servlet to another servlet or JSP. This is useful when you want the second servlet to process the request and generate the response, but the client is unaware of this redirection.<br>

<b>Using HttpServletResponse:</b> You can also use the HttpServletResponse object to send a redirect response to the client, asking it to make a new request to another servlet. This approach is useful when you want the client to be aware of the redirection.<br>

<b>Using URL Patterns:</b> If the servlet you want to call is mapped to a URL pattern in the web.xml deployment descriptor or using annotations, you can directly call that URL from the first servlet.<br><br>


<h4><b>2. Session Management</b></h4>
Session management in Java web applications involves maintaining stateful information about user interactions across multiple requests. This is crucial for applications to remember user-specific data, such as login information, shopping cart contents, or user preferences. Java provides several mechanisms for session management, including:<br><br>

<b>HTTP Session:</b> Java EE provides a session tracking API that allows developers to manage sessions programmatically. This API includes classes such as HttpSession and HttpServletRequest that can be used to create, retrieve, and invalidate sessions.<br>

<b>HTTP Cookies:</b> Cookies are small pieces of data stored on the client-side (browser) and sent to the server with each request. When a session is created, a cookie with the session ID is sent to the client. The browser then returns this cookie with subsequent requests, allowing the server to identify the session. In Java web applications, cookies can be used to store session IDs, which are used to identify and retrieve session data on the server. Servlets and JSP provide APIs for working with cookies.<br>

<b>URL Rewriting:</b> URL rewriting involves appending session IDs to URLs as query parameters. This allows the server to track sessions without using cookies. This technique is used when cookies are disabled in the browser. However, this approach can expose session IDs in the URL, making them potentially vulnerable to being intercepted or tampered with. It is less secure than using cookies as the session ID can be exposeed in browser history<br>


