<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Form Result</title>
    </head>
    <body>
        <h2>Form Result</h2>

        <p><b>Name:</b> <%= request.getParameter("txtName") %></p>
        <p><b>Password:</b> <%= request.getParameter("txtPass") %></p>
        <p><b>Hidden:</b> <%= request.getParameter("hiddenValue") %></p>
        <p><b>Gender:</b> <%= request.getParameter("gender") %></p>
        <p><b>Status:</b> <%= request.getParameter("status") %></p>
        <p><b>Course:</b> <%= request.getParameter("course") %></p>

        <p><b>Skills:</b></p>
        <%
            String[] skills = request.getParameterValues("skills");
            if (skills != null) {
                for (String s : skills) {
        %>
                    <%= s %><br/>
        <%
                }
            }
        %>

        <p><b>Message:</b></p>
        <pre><%= request.getParameter("message") %></pre>

        <a href="index.jsp">Back</a>
    </body>
</html>