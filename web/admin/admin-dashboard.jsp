<%-- 
    Document   : admin-dashboard
    Created on : 20-Nov-2016, 15:49:08
    Author     : nemeshvarsani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/main.css">
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
        <title>Admin dashboard</title>
    </head>
    <body>
        <nav>
            <div class="nav-wrapper teal">
                <a href="#" class="brand-logo center">XYZ Assoc.</a>
                <ul id="nav-mobile" class="left hide-on-med-and-down">

                </ul>
            </div>
        </nav>
        
        <div class="container">
            <br>
            <br>
            <a href="/esd-assignment/ListAllClaims.do" class="button waves-effect waves-light btn"><i class="material-icons right">list</i>List all pending claims</a>
            <br>
            <br>
            <a href="/esd-assignment/ListAllMembers.do" class="button waves-effect waves-light btn"><i class="material-icons right">list</i>List all pending members</a>
            <br>
            <br>
            <a href="/esd-assignment/ListMembers.do" class="button waves-effect waves-light btn"><i class="material-icons right">list</i>List all members</a>
            <br>
            <br>
            <a href="/esd-assignment/Logout" class="button waves-effect waves-light btn red"><i class="material-icons right"></i>Logout</a>
        </div>
    </body>
</html>
