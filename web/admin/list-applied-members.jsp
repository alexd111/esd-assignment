<%-- 
    Document   : list-applied-members
    Created on : 25-Nov-2016, 14:27:48
    Author     : Alex
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
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
        <title>Applied members</title>
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
                <tr><th>Member ID</th><th>Name</th><th>address</th><th>DOB</th><th>DOR</th><th>Balance</th><th>Approve/Reject</th></tr>

                <%
                    List<Member> members = (List) session.getAttribute("memberList");

                    if (members != null) {
                        Iterator<Member> it = members.iterator();

                        while (it.hasNext()) {
                            Member member = it.next();
                            if (member.getStatus().equals("APPLIED")) {
                                out.println("<tr>");
                                out.println("<td>" + member.getId() + "</td>");
                                out.println("<td>" + member.getName() + "</td>");
                                out.println("<td>" + member.getAddress() + "</td>");
                                out.println("<td>" + member.getDob() + "</td>");
                                out.println("<td>" + member.getDor() + "</td>");
                                out.println("<td>£" + member.getBalance() + "</td>");
                                out.print("<td><a class='waves-effect waves-light btn green approve' id='" + member.getId());
                                out.print("'><i class='material-icons'>done</i></a>");
                                out.print("<a class='waves-effect waves-light btn red reject' id='" + member.getId());
                                out.print("'><i class='material-icons'>clear</i></td>");
                                out.print("</tr>");
                            }
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
                 <script>
            $(".approve").click(function () {
                $.post('UpdateMemberStatus.do', {member: this.id, status: "APPROVED"},
                        function (returnedData) {
                            location.reload();
                        });
            });
            $(".reject").click(function () {
                $.post('UpdateMemberStatus.do', {member: this.id, status: "SUSPENDED"},
                        function (returnedData) {
                            location.reload();
                        });
            });
        </script>
    </body>
</html>
