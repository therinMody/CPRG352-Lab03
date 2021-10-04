<%-- 
    Document   : arithmeticcalculator
    Created on : Oct 3, 2021, 4:56:01 PM
    Author     : 821320
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Arithmetic Calculator</title>
    </head>
    <body>
        <h1>Arithmetic Calculator</h1>
        
        <form method="POST" action="/CPRG352-Lab03/arithmetic">
            <table>
                <tr>
                    <td>First:</td>
                    <td><input type="number" name="first" value=${firstNumber}></td>
                </tr>
                <tr>
                    <td>Last:</td>
                    <td><input type="number" name="last" value=${lastNumber}></td>
                </tr>       
            </table>
            
            <button name="operation" type="submit" value="+">+</button>
            <button name="operation" type="submit" value="-">-</button>
            <button name="operation" type="submit" value="*">*</button>
            <button name="operation" type="submit" value="%">%</button>
            
        </form>
        
        <h2>${result}</h2>
        <a href="/CPRG352-Lab03/age">Age Calculator</a>
    </body>
</html>
