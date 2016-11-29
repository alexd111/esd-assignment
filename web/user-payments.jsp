<%-- 
    Document   : user-payments
    Created on : 29-Nov-2016, 14:28:54
    Author     : Alex
--%>

<%@page import="java.util.Iterator"%>
<%@page import="model.Payment"%>
<%@page import="java.util.List"%>
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
        <title>Payments</title>
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
            <table class="highlight">
                <tr><th>Amount(£)</th><th>Type</th><th>Date</th></tr>

                <%
                    List<Payment> payments = (List) session.getAttribute("paymentList");

                    if (payments != null) {
                        Iterator<Payment> it = payments.iterator();

                        while (it.hasNext()) {
                            Payment payment = it.next();

                            out.println("<tr>");
                            out.println("<td>£" + payment.getAmount() + "</td>");
                            out.println("<td>" + payment.getPaymentType() + "</td>");
                            out.println("<td>" + payment.getPaymentDate() + "</td>");
                            out.print("</tr>");

                        }
                    }
                %>

            </table>
        </div>
    </body>
</html>
