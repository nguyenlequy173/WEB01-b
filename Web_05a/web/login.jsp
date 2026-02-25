<%-- 
    Document   : c
    Created on : Jan 19, 2026, 3:51:43 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="MainController" method="post">
            <input type="hidden" name="action" value="login" />
            Username: <input type="text" name="txtUsername" /> <br/>
            Password: <input type="password" name="Password" /> <br/>
            <input type="submit" value="Login" /><!-- comment -->
        </form>
        <%
           String message= request.getAttribute("message") + "";
           message = (message.equals("null"))?"":message;
           %>
           <span style ="color:red"><%=message%></span>
    </body>
</html>
