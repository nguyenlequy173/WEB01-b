<%-- 
    Document   : welcome
    Created on : Mar 19, 2026, 3:24:44 PM
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
        <c:choose>
            <c:when test="${not empty user}">
                <h1> welcome ${user.fullName}</h1>
                <a href="MainController?action=logout">Logout</a>
                <a href="search.jsp">Search</a>
            </c:when>
            <c:otherwise>
                <c:redirect url="login.jsp"/>
            </c:otherwise>
        </c:choose>
    </body>
</html>
