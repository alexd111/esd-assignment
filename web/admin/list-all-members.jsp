<%--
    Document   : list-all-members
    Created on : 03-Nov-2016, 15:44:27
    Author     : Alex
--%>

<%@page import="model.Member"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <tr><th>Name</th><th>Address</th><th>DOB</th><th>DOR</th><th>Balance</th><th>Status</th></tr>
                    <%
                        boolean isAdmin = (boolean) session.getAttribute("admin-authenticated");
                        if (isAdmin == true) {
                            List<Member> members = (List) session.getAttribute("memberList");
                            if (members != null) {
                                Iterator<Member> it = members.iterator();

                                while (it.hasNext()) {
                                    out.println("<tr>");
                                    Member member = it.next();
                                    out.println("<td>" + member.getName() + "</td>");
                                    out.println("<td>" + member.getAddress() + "</td>");
                                    out.println("<td>" + member.getDob() + "</td>");
                                    out.println("<td>" + member.getDor() + "</td>");
                                    out.println("<td>" + member.getBalance() + "</td>");
                                    out.println("<td>" + member.getStatus() + "</td>");
                                    out.println("</tr>");
                                }
                            }
                        }
                        else {
                            out.println("You haven't logged in as an admin");
                        }

                    %>
        </table>
        <br>
        <a href="Logout" class="button">Logout</a>
    </body>
</html>
