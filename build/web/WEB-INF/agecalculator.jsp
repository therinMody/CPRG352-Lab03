<%-- 
    Document   : agecalculator
    Created on : Oct 3, 2021, 4:03:49 PM
    Author     : 821320
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Age Calculator</title>
    </head>
    <body>
        <h1>Age Calculator</h1>
        
        <form method="POST" action="age">
            <label>Enter your age:</label>
            <input type="number" min="0" value="" name="age">
            <br>
            <input type="submit" value="Calculate">
        </form>
        
        <h2>${printAge}</h2>
        
        <a href="/CPRG352-Lab03/arithmetic">Arithmetic Calculator</a>
    </body>
</html>
