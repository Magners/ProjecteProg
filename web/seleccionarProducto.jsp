<%-- 
    Document   : calendario
    Created on : 13-may-2017, 16:49:50
    Author     : magne
--%>


<%@page import="java.util.List"%>
<%@page import="entities.Producto"%>
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
                String item = (String) request.getAttribute("item");
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
        <h3 align="center">Selecciona el modelo del producto escogido:</h3>
        <br>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-2">
                    <div class="form-group">
                        <form action="confirm" method="POST">
                        <label for="sel1">Modelo:</label>  <!--Mostrar el productes del tipus seleccionat a la homepage, que estiguin lliures els dies seleccionats -->
                        <select class="form-control" id="sel1" name="sel1">

                            <%
                                List<Producto> prs = (List<Producto>) request.getAttribute("prs");
                                for (Producto pr : prs) {
                            %>

                            <option value="<%= pr.getNombreProducto()%>"><%= pr.getNombreProducto()%></option> 

                            <% }
                            %>
                        </select>
                        <button type="submit" class="btn btn-primary" id="okConfirmacion">Alquilar!</button >
                        </form>
                        <br>
                   
                    </div>
                </div>
                <div class="col-md-5"></div>

            </div>
        </div>
        <% } else {
        %>
        <h1>No hay usuario validado.</h1>
        <%
            }%>
    </body>
</html>
