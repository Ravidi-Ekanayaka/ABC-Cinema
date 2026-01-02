<%-- 
    Document   : Puss_check_out
    Created on : Jan 13, 2023, 2:14:38 PM
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
         <tr>
            <td>Movie Name : </td>
            <td><input type="text" name="movie" value="Puss in Boots" /></td>
        </tr>
        <tr>
            <td>Price :</td>
            <td><input type="text" name="price" value= 250 /></td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <input type="submit" value="Checkout" />
            </td>
        </tr>
    </table>
    </form>
</div>
</body>
</html>