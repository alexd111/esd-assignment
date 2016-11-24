<%-- 
    Document   : list-all-pending-members
    Created on : 23-Nov-2016, 14:05:43
    Author     : Alex
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="model.Claim"%>
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
                <tr><th>User</th><th>Amount(£)</th><th>Rationale</th><th>Date</th><th>Approve/Reject</th></tr>

                <%
                    List<Claim> claims = (List) session.getAttribute("claimList");

                    if (claims != null) {
                        Iterator<Claim> it = claims.iterator();

                        while (it.hasNext()) {
                            Claim claim = it.next();
                            if (claim.getStatus().equals("SUBMITTED")) {
                                out.println("<tr>");
                                out.println("<td>" + claim.getMemberID() + "</td>");
                                out.println("<td>" + claim.getAmount() + "</td>");
                                out.println("<td>" + claim.getRationale() + "</td>");
                                out.println("<td>" + claim.getClaimDate() + "</td>");
                                out.print("<td><a class='waves-effect waves-light btn green approve' id='" + Integer.toString(claim.getId()));
                                out.print("'><i class='material-icons'>done</i></a>");
                                out.print("<a class='waves-effect waves-light btn red reject' id='" + Integer.toString(claim.getId()));
                                out.print("'><i class='material-icons'>clear</i></td>");
                                out.print("</tr>");
                            }
                        }
                    }
                %>

            </table>
            <br>
            <br>
            <a href="admin/admin-dashboard.jsp" class="button waves-effect waves-light btn"><i class="material-icons">home</i></a>
            <br>
            <br>
            <a href="Logout" class="button waves-effect waves-light btn red"><i class="material-icons right"></i>Logout</a>
        </div>
        <script>
            $(".approve").click(function () {
                $.post('UpdateClaim.do', {claim: this.id, status: "APPROVED"},
                        function (returnedData) {
                            location.reload();
                        });
            });
            $(".reject").click(function () {
                $.post('UpdateClaim.do', {claim: this.id, status: "REJECTED"},
                        function (returnedData) {
                            location.reload();
                        });
            });
        </script>
    </body>
</html>
