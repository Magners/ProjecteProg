<%-- 
    Document   : final
    Created on : 10/05/2017, 17:35:33
    Author     : ferran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Final</title>
        <link href="libs/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="libs/testing.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
            String msg = (String) request.getAttribute("msg");
            Boolean succes = (Boolean) request.getAttribute("succes");

            String url = "index.html";
            String textb = "Main menu";
            if (!succes) {
                url = "registrarse.html";
                textb = "return to register";

            }
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
            <h1 align="center">Alquiler porrule projectat <small>Magner&Torrafa</small></h1>
        </div>
        <div class="container-fluid">
            <div class="row"><br><br></div>
            <div class="row">
                <div class="col-md-12">
                    <p><%= msg%></p>
                    <a href="<%= url%>" class="btn btn-default"><%= textb%></a>
                </div>
            </div>
        </div>
    </body>
</html>
