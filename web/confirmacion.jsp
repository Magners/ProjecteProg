<%-- 
    Document   : calendario
    Created on : 13-may-2017, 16:49:50
    Author     : magne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="libs/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="libs/testing.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
            String user = (String) session.getAttribute("user");
            if (user != null) {
        %>
        <div class="carousel slide carousel-fade" data-ride="carousel">
            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                </div>
                <div class="item">
                </div>
                <div class="item">
                </div>
            </div>
        </div>
        <div class="page-header">
            <h1 align="center">Alquiler 420 projectat <small>Magner&Torrafa</small></h1>
        </div>
        <br>
        <h3 align="center">Confirmación del alquiler:</h3>
        <br>
        <div class="container-fluid">
            <div class="row">
                <!--MOSTRAR DATOS DEL ALQUILER QUE SE VA A REALIZAR -->
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-2">
                   <a href="homepage.jsp" class="btn btn-primary" id="siAlquiler">Alquilar y regresar</a> 
                </div>
                <div class="col-md-2">
                    <a href="homepage.jsp" class="btn btn-primary" id="noAlquiler">No alquilar</a>
                </div>
                <div class="col-md-4"></div>
            </div>
        </div>
        <% } else {
        %>
        <h1>No hay usuario validado.</h1>
        <%
            }%>
    </body>
</html>
