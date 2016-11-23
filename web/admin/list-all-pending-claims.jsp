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
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <tr><th>User</th><th>Amount</th><th>Rationale</th><th>Date</th></tr>

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
                            out.println("</tr>");
                        }
                    }
                }
            %>

        </table>

    </body>
</html>
