<%-- 
    Document   : entrar
    Created on : 11/05/2017, 17:25:48
    Author     : ferran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>           
        <%
             String user = (String) session.getAttribute("user");
             if (user != null) {
         %>
         <h1>Hola <%=user%></h1>
         <% } else {
         %>
         <h1>No hay usuario validado.</h1>
         <%
     }%>
    </body>
</html>
