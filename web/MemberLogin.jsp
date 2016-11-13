<%-- 
    Document   : MemberLogin
    Created on : 13-Nov-2016, 14:18:59
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="POST" action="MemberLogin.do">
            User name:<br>
            <input type="text" name="username"><br>
            User password:<br>
            <input type="password" name="psw">
            <input type="SUBMIT">
        </form>
    </body>
</html>
