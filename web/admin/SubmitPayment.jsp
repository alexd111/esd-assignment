<%-- 
    Document   : SubmitPayment
    Created on : 20-Nov-2016, 13:42:44
    Author     : nemeshvarsani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Submit Payment</h1>
        <<form method="POST" action="SubmitPayment">
            Amount:<br>
            <input type="text" name="amount"><br>           
            Enter Rationale:<br>
            <textarea name="rationale" rows="10" cols="30"></textarea>
            <input type="SUBMIT">
        </form>
     
    </body>
</html>
