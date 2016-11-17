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
            out.println(member.getAddress());
        %>
            
        <a href="Logout" class="button">Logout</a>
    </body>
</html>
