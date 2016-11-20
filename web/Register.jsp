<%-- 
    Document   : Register
    Created on : 14-Nov-2016, 17:27:11
    Author     : av2-ihuoma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <h1 align="center"> Registration Form </h1>
      
    <body>

        <form align="center" 
            action ="RegisterUser.do" method="POST">

            First name:<br>
            <input type="text" name="firstname" required><br>
            Last name:<br>
            <input   type="text" name="lastname" required><br>
            Address:<br>
            <input   type="text" name="address" required><br>
            Date Of Birth:<br>
            <input type="date" name="DOB" required><br>
                
         
            <input type="submit" value="Submit">
            
         
            
            
        </form>

        
    </body>
</html>
