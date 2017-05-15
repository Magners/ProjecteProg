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
        <br><br>
        <h3 align="center">Selecciona el dia de incicio y el de devolución:</h3>
        <div class="container-fluid">
            <br>
            <div class="row">
                <div class="col-md-4"></div>
                <form action="calendario2" method="POST">
                    <div class="col-md-1">
                        <h4>Recogida:</h4>
                        <input type="date" name="fechaInicio" id="fechaInicio">    <!--FER EL CHGECK QUE LA FECHA FIN SIGUI POSTERIOR A LA FECHA INICIO  -->
                    </div>
                    <div class="col-md-1"></div>
                    <div class="col-md-1">
                        <div class="form-group">
                            <h4>Devolución:</h4>
                            <input type="date" name="fechaFin" id="fechaFin">
                            <button type="submit" class="btn btn-primary" id="okCalendario">Seleccionar producto</button>
                        </div>
                    </div>
                    
                   </form>
                <div class="col-md-5"></div>
            </div>
         
            <br>
            <div class="row">
                <div class="col-md-5"></div>
                <div class="col-md-1">
                  <!--  <a href="seleccionarProducto.jsp" class="btn btn-primary" id="okCalendario">Seleccionar producto</a>-->
                </div>
                <div class="col-md-6"></div>
               
            </div>
        </div>
        <% } else {
        %>
        <h1>No hay usuario validado.</h1>
        <%
            }%>
    </body>
</html>
