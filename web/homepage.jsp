<%-- 
    Document   : homepage
    Created on : 11-may-2017, 17:43:44
    Author     : magne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
        <h3 align="center">Indica el tipo de producto que deseas alquilar: </h3>
        <div class="container-fluid">
            <br><br>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-3">
                    <form action="seleccion" method="POST">
                    <button type="submit" class="btn-lg btn-primary" value="proyector" name="item">Proyector</button>
                    </form>
                </div>
                <div class="col-md-3">
                     <form action="seleccion" method="POST">
                    <button type="submit" class="btn-lg btn-primary" value="portatil" name="item">Portatil</button>
                    </form>
                </div>
                <div class="col-md-2"></div>
            </div>
            <br><br><br>
            <!--<div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-3">
                    <a href="calendario.jsp" class="btn-lg btn-primary" id="item3">Objecto3</a>
                </div>
                <div class="col-md-3">
                    <a href="calendario.jsp" class="btn-lg btn-primary" id="item4">Objeto4</a>
                </div>-->
                <div class="col-md-2"></div>
            </div>
        </div>
        <% } else {
        %>
        <h1>No hay usuario validado.</h1>
        <%
             }%>
    </body>

</html>

