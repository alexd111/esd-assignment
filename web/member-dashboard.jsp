<%-- 
    Document   : member-dashboard
    Created on : 13-Nov-2016, 15:50:07
    Author     : Alex
--%>

<%@page import="model.Member"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Member member = (Member) session.getAttribute("memberDetails");
            out.println("Login ID:");
            out.println(member.getId());
            out.println("<br>");
            out.println("Name");
            out.println(member.getName());
            out.println("<br>");
            out.println("Address");
            out.println(member.getAddress());
            out.println("<br>");
            out.println("Approval status");
            out.println(member.getStatus());
            out.println("<br>");
            out.println("Account Balance");
            out.println(member.getBalance());
            out.println("<br>");
            out.println("Date of registration");
            out.println(member.getDor());
        %>
            
        <a href="Logout" class="button">Logout</a>
    </body>
</html>
