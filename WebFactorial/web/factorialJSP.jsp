<%-- 
    Document   : factorialJSP
    Created on : 27-feb-2018, 10:16:57
    Author     : entrar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Factorial de un número</h1>
    </body>
</html>
    <%-- start web service invocation --%><hr/>
    <%
    try {
	org.factorial.Factorial_Service service = new org.factorial.Factorial_Service();
	org.factorial.Factorial port = service.getFactorialPort();
	 // TODO initialize WS operation arguments here
	int num = 4;
	// TODO process result here
	long result = port.factorial(num);
	out.println("Resultado del factorial de 4 = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
