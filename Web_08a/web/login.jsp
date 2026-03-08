<%-- 
    Document   : login
    Created on : Jan 29, 2026, 4:18:06 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            Password: <input type="password" name="txtPassword" required="required"/><!-- comment -->
            <input type="submit" value="Login"/>
        </form>
        <c:if test="${not empty message}">
            <span style="color:red">${message}</span>
        </c:if>
    </body>
</html>
