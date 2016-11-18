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
        <%
        List<Member> members = (List)session.getAttribute("memberList");
        if (members != null) {
            Iterator<Member> it = members.iterator();
            while(it.hasNext()) {
              Member member = it.next();
              out.println(member.getName());
              out.println(member.getAddress());
              out.println(member.getDob());
              out.println(member.getDor());
              out.println(member.getBalance());
              out.println(member.getStatus());
            }
        }
      
        %>
    </body>
</html>
