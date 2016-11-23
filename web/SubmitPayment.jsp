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
        <title>Submit Payment</title>
    </head>
    <body>
        <h1>Submit Payment</h1>
        <<form method="POST" action="MakePayment.do">
            Amount:<br>
            <input type="text" name="amount"><br>           
            <input type="SUBMIT">
        </form>
     
    </body>
</html>
