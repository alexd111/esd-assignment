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
        <title>Welcome</title>
    </head>
    <body>
        <h1 align="center"> Thank you for successfully registering to XYZ </h1>
        <p><b>Your username is:  </b></p>
        <%
            out.println(request.getAttribute("username"));
        %>
        <br>
        <p><b>Your password is:</b></p>
        <%
            out.println(request.getAttribute("password"));
        %>
        
        <a href="MemberLogin.jsp" class="button">Click here to log in</a>
    </body>
</html>
