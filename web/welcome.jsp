<%-- 
    Document   : welcome
    Created on : 20-Nov-2016, 12:48:48
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
        <title>Welcome</title>
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
            <h4> Thank you for successfully registering to XYZ </h4>
            <p><b>Your username is:  </b></p>
            <% out.println(request.getAttribute("username")); %>
            <br>
            <p><b>Your password is:</b></p>
            <% out.println(request.getAttribute("password"));%>
            
            <br>
            <br>
            <a href="MemberLogin.jsp" class="button waves-effect waves-light btn"><i class="material-icons right">forward</i>Click here to log in</a>
        </div>
    </body>
</html>
