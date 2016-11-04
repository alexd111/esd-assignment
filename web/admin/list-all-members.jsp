<%-- 
    Document   : list-all-members
    Created on : 03-Nov-2016, 15:44:27
    Author     : Alex
--%>

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
        <h1>Hello World!</h1>
        <%
        List members = (List)session.getAttribute("memberList");
        if (members != null) {
            Iterator it = members.iterator();
        while(it.hasNext()) {
          out.println("<br>" + it.next());
        }
      }
      
        %>
    </body>
</html>
