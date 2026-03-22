<%-- 
    Document   : search
    Created on : Mar 19, 2026, 3:24:51 PM
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
        <c:if test="${empty user}">
            <c:redirect url="login.jsp"/>
    </c:if>
        <c:if test="${not empty user}">
                           <form action="MainController" method="post">
                    <input type="hidden" name="action" value="search"/>
                    Search: <input type="text" name="keyword" value="${keyword}"/>
                    <input type="submit" value="search"/>
                </form>
                    <c:if test="${empty list}">no data matching founded
                        
                    </c:if>
                    <c:if test="${not empty list}">
                        <table border="1">
                            <thead>
                            <tr>
                                <th>studentID</th>
                                <th>fullName</th>
                                <th>gender</th>
                                <th>dateOfBirth</th>
                                <th>email</th>
                                <!-- comment -->
                                <th>phone</th>
                                <th>address</th>
                                <th>city</th>
                                <th>major</th>
                                <th>faculty</th>
                                <th>enrollYear</th>
                                <th>gpa</th>
                                <th>scholarship</th>
                                <th>status</th>
                            </tr>
                            </thead>
                            <c:forEach items="${list}" var="f">
                                <tr>
                                    <td>${f.studentID}</td>
                                    <td>${f.fullName}</td>
                                    <td>${f.gender}</td>
                                    <td>${f.dateOfBirth}</td>
                                    <td>${f.email}</td>
                                    <td>${f.phone}</td>
                                    <td>${f.address}</td>
                                    <td>${f.city}</td>
                                    <td>${f.major}</td>
                                    <td>${f.faculty}</td>
                                    <td>${f.enrollYear}</td>
                                    <td>${f.gpa}</td>
                                    <td>${f.scholarship}</td>
                                    <td>${f.status}</td>
                                </tr>
                                
                            </c:forEach>
                        </table>
                    </c:if>
        </c:if>
    </body>
</html>
