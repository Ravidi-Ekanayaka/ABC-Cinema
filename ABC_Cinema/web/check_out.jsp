<%-- 
    Document   : check_out
    Created on : Jan 13, 2023, 2:17:56 PM
    Author     : Asus VivoBook
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Check Out</title>
<a href="error.jsp"></a>
    <style type="text/css">
        table { border: 0; }
        table td { padding: 10px; }
    </style>
</head>
<body>
  
<div align="center">
    <h1>Check Out</h1>
    <br/>
    <form action="AuthorizePaymentServlet" method="POST">
    <table>
        <br>
         <tr>
            <td>Each ticket price is 4 USD </td>
        </tr>
        <tr>
            <td font-size:30px>Total amount :</td>
            <td font-size:30px><input type="text" name="price"  /></td>
        </tr>
        <br>
        <tr>
            <td colspan="5" font-size:35px align="right">
                
                <input type="submit" value="Pay" />
            </td>
        </tr>
        
    </table>
    </form>
</div>
</body>
</html>