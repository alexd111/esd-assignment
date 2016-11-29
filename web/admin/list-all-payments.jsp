<%-- 
    Document   : list-all-payments
    Created on : 29-Nov-2016, 14:48:25
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
                <tr><th>User</th><th>Amount(£)</th><th>Type</th><th>Date</th></tr>

                <%
                    List<Payment> payments = (List) session.getAttribute("paymentList");

                    if (payments != null) {
                        Iterator<Payment> it = payments.iterator();

                        while (it.hasNext()) {
                            Payment payment = it.next();

                            out.println("<tr>");
                            out.println("<td>" + payment.getMemberID() + "</td>");
                            out.println("<td>£" + payment.getAmount() + "</td>");
                            out.println("<td>" + payment.getPaymentType()+ "</td>");
                            out.println("<td>" + payment.getPaymentDate() + "</td>");
                            out.print("</tr>");

                        }
                    }
                %>

            </table>
            <br>
            <br>
            <a href="/esd-assignment/admin/admin-dashboard.jsp" class="button waves-effect waves-light btn"><i class="material-icons">home</i></a>
            <br>
            <br>
            <a href="/esd-assignment/Logout" class="button waves-effect waves-light btn red"><i class="material-icons right"></i>Logout</a>
        </div>
    </body>
</html>
