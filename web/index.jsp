<%-- 
    Document   : index
    Created on : Jan 5, 2026, 4:39:16 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=""UTF-8">
        <title>HTML Forms</title>
    </head>
    <body>
        <h2>HTML Forms</h2>
    
        
        <form action=""result.jsp" method="post">
            <!-- Textbox -->
            Textbox:
            <input type="text" name="txtName" size="5"/>
            <br/>
            
            <!-- Password -->
            Password:
            <input type="password" name="txtPass" size="15" />
            <br/>
            
            <!-- Checkbox -->
            Hidden
                        <input type="checkbox" name="gender" value="Male" checked /> Male
            <br/>
            

            

            
            <!-- Radio -->
            Status
            <input type="radio" name="status" value="Single" checked /> Single
            <br/>
            <input type="radio" name="status" value="Married" /> Married
            <br/>
            <input type="radio" name="status" value="Divorced" /> Divorced
            <br/>
            
            <!-- Combobox -->
            ComboBox:
            <select name="course">
                <option>JSP and Servlet</option>
                <option>EJB</option>
                <option>Core Java</option>
            </select>
            <br/>

            <!-- Multiple select -->
            Multiple:
            <select name="skills" multiple size="3">
                <option selected>JSP and Servlet</option>
                <option selected>EJP</option>
                <option>Core Java</option>
                
            </select>
            <br/>

            <!-- TextArea -->
            TextArea:
            <textarea name="message" rows="4" cols="25">
        
This is a form
parameters demo!!!!
            
            </textarea>
            <br/><br/>

            <!-- Buttons -->
            <input type="submit" value="Submit Query" />
            <input type="submit" value="Register" />
            <input type="reset" value="Reset" />
            <input type="button" value="JavaScript" onclick="alert('Hello JavaScript!')" />
        </form>
    </body>
</html>
