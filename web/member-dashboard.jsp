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
        <link rel="stylesheet" href="css/main.css">
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
        <title>Member dashboard</title>
    </head>
    <body>
        <nav>
            <div class="nav-wrapper teal">
                <a class="brand-logo center">XYZ Assoc.</a>
                <ul id="nav-mobile" class="left hide-on-med-and-down">

                </ul>
            </div>
        </nav>
        <div class="container">
            <br>
            <%
                Member member = (Member) session.getAttribute("memberDetails");
                out.println("Login ID:");
                out.println(member.getId());
                out.println("<br>");
                out.println("Name:");
                out.println(member.getName());
                out.println("<br>");
                out.println("Address:");
                out.println(member.getAddress());
                out.println("<br>");
                out.println("Approval status:");
                out.println(member.getStatus());
                out.println("<br>");
                out.println("Account Balance: £");
                out.println(member.getBalance());
                out.println("<br>");
                out.println("Date of registration: ");
                out.println(member.getDor());
            %>
            <br>
            <br>
            <a href="/esd-assignment/user-dashboard.jsp" class="button waves-effect waves-light btn"><i class="material-icons right">assignment</i>Submit claim</a>
            <br>
            <br>
            <a href="ListMemberClaims.do" class="button waves-effect waves-light btn"><i class="material-icons right">assignment</i>View submitted claims</a>
            <br>
            <br>
            <a href="SubmitPayment.jsp" class="button waves-effect waves-light btn"><i class="material-icons right">payment</i>Submit payment</a>
            <br>
            <br>
            <a href="/esd-assignment/Logout" class="button waves-effect waves-light btn red"><i class="material-icons right"></i>Logout</a>
        </div>
    </body>
</html>
