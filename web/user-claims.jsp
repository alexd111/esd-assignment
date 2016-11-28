<%-- 
    Document   : user-claims
    Created on : 28-Nov-2016, 10:59:57
    Author     : Alex
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="model.Claim"%>
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
        <title>Claims</title>
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
                <tr><th>Amount(£)</th><th>Rationale</th><th>Date</th><th>Status</th></tr>

                <%
                    List<Claim> claims = (List) session.getAttribute("claimList");

                    if (claims != null) {
                        Iterator<Claim> it = claims.iterator();

                        while (it.hasNext()) {
                            Claim claim = it.next();

                            out.println("<tr>");
                            out.println("<td>£" + claim.getAmount() + "</td>");
                            out.println("<td>" + claim.getRationale() + "</td>");
                            out.println("<td>" + claim.getClaimDate() + "</td>");
                            out.println("<td>" + claim.getStatus() + "</td>");
                            out.print("</tr>");

                        }
                    }
                %>

            </table>
    </body>
</html>
