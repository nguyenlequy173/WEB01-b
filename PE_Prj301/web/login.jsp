<%-- 
    Document   : login
    Created on : Apr 26, 2025, 8:58:20 AM
    Author     : Computing Fundamental - HCM Campus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <!--your code here-->
    <form action="MainController" method="post">
        <input type="hidden" name="action" value="login"/>
        Username: <input type="text" name="txtUsername" required="required"/> <br/>
        Password: <input type="password" name="txtPassword" required="required"/> <br/>
        <input type="submit" value="login"/>
    </form>
    <c:if test="${not empty message}">
        <span style="color:red">${message}</span>
                  </c:if>
    </body>
</html>
