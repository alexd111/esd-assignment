<%-- 
    Document   : user-dashboard
    Created on : 15-Nov-2016, 18:55:57
    Author     : jackwinter
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Make a Claim</h1>
        <form method="POST" action="MakeClaim.do">
            Amount:<br>
            <input type="text" name="amount"><br>           
            Enter Rationale:<br>
            <textarea name="rationale" rows="10" cols="30"></textarea>
            <input type="SUBMIT">
        </form>
    </body>
</html>
