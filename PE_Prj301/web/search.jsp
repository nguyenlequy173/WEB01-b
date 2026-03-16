<%-- 
    Document   : search
    Created on : Apr 26, 2025, 8:59:02 AM
    Author     : Computing Fundamental - HCM Campus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Page</title>
    </head>
    <body>
        <c:if test="${empty user}">
            <c:redirect url="login.jsp"/>
        </c:if>
        <c:if test="${not empty user}">
            <form action="MainController" method="post">
                <input type="hidden" name="action"  value="search"/>
                search: <input type="text" name="keyword" value="${keyword}"/>
                <input type="submit" value="search"/>
            </form>
            <c:if test="${empty list}">
                <span style="color:red">no data matching</span>
            </c:if>
            <c:if test="${not empty list}">
                <table border="1">
                    <thead>
                        <tr>
                            <th>id</th>
                            <th>name</th>
                            <th>description</th>
                            <th>price</th>
                            <th>size</th>
                            <th>status</th>
                        </tr>
                    </thead>
                    <c:forEach items="${list}" var="f">
                        <tr>
                            <td>${f.id}</td>
                            <td>${f.name}</td>
                            <td>${f.description}</td>
                            <td>${f.price}</td>
                            <td>${f.size}</td>
                            <td>${f.status}</td>
                           
                        </tr>
                    </c:forEach>

                </table>
            </c:if>
        </c:if>
    </body>
</html>
