<%-- 
    Document   : welcome
    Created on : Jan 22, 2026, 3:30:02 PM
    Author     : admin
--%>

<%@page import="models.UserDTO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
UserDTO u= (UserDTO)session.getAttribute("user");
if(u!= null){
%>
<h1>Welcome, <%=u.getFullName()%> </h1>
<a href ="MainController?action =logout&">Logout</a><br/>
<a href="search.jsp">Search</a>
<% }else{
response.sendRedirect("login..jsp");
}
%>            

    </body>
</html>
