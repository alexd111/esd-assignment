<%-- 
    Document   : welcome
    Created on : 17-Nov-2016, 13:10:01
    Author     : av2-ihuoma
--%>


<%@page import="java.util.Random"%>
<html>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <h1 align="center"> Thank you for successfully registering to XYZ </h1>
    <form>
        <body>
            <p><b>Your username is:  </b>
                <% String name = request.getParameter("firstname");
                    char res = name.charAt(0);

                    String ln = request.getParameter("lastname");
                    char res2 = ln.charAt(0);

                    out.println(res + "" + res2 + "-" + ln);
                %>

                <br>
            <p><b>Your password is:</b>
                <% String DOB = request.getParameter("DOB");

                    out.print(DOB);

                    Random rand = new Random();

                    for (int i = 0; i < 4; i++) {
                        int num = rand.nextInt(9) + 1;
                        out.print(num);
                    }
                %>
            </p>
            <br/>
    </form>
</body>
</html>
