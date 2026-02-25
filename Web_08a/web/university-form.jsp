<%-- 
    Document   : university-form
    Created on : Feb 2, 2026, 3:58:45 PM
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
            <input type="hidden" name="action" value="addUniversity"/>
                id: <input type="text" name="id" value="${u.id}"/>
                name:<input type="text" name="name" value="${u.name}"/>
                shortName: <input type="text" name="shortName" value="${u.shortName}"/>
                description: <input type="text" name="description" value="${u.description}"/>
                foundedYear: <input type="text" name="foundedYear" value="${u.foundedYear}"/>
                address: <input type="text" name="address" value="${u.address}"/>
                city: <input type="text" name="city" value="${u.city}"/>
                region: <input type="text" name="region" value="${u.region}"/>
                type: <input type="text" name="type" value="${u.type}"/>
                totalStudents: <input type="number" step="1" min="0" name="totalStudents" value="${u.totalStudents}"/>
                totalFaculties: <input type="number" name="totalFaculties" step="1" min="0" value="${u.totalFaculties}"/>
                isDraft: <input type="boolean" name="isDraft" value="${u.isDraft}"/>
                ID: <input type="text" name="id" value="${u.id}"/>
                <input type="submit" value="Login"/>
            
        </form>
                 <p style="color: green">${msg}</p>
        <p style="color: red">${error}</p>
    </body>
</html>
