
<%-- 
    Document   : login
    Created on : 08-01-2026, 11:08:26
    Author     : tungi
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
            Username: <input type="text" name="txtUsername"/> <br/>
            Password: <input type="text" name="txtPassword"/> <br/>
            <input type="submit" value="login"/>
        </form>
            <% String message= request.getParameter("message")+"";
            message=(message.equals("null")?"":message);
            %>
        
    </body>
</html>
