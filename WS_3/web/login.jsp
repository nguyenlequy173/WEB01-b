<%-- 
    Document   : login
    Created on : Mar 19, 2026, 3:24:32 PM
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
            <input type="hidden" name="action" value="login"/>
            Username: <input type="text" name="txtUsername" required="required"/>
            Password: <input type="password" name="txtPassword" required="required"/>
            <input type="submit" value="login"/>
        </form>
        <c:if test="${not empty message}">
            <span style="color:red">${message}</span>
        </c:if>
    </body>
</html>
