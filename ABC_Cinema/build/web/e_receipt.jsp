<%-- 
    Document   : e_ticket
    Created on : Jan 13, 2023, 1:15:46 PM
    Author     : Asus VivoBook
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment Receipt</title>
<style type="text/css">
    table { border: 0; }
    table td { padding: 5px; }
</style>
</head>
<body>
<div align="center">
    <h1>Payment Done. Thank you for purchasing our tickets.</h1>
    
    <table>
        <tr>
            <td>Payer : </td>
            <td>${payer.firstName} ${payer.lastName}</td>
        </tr> 
        <tr>
            <td>Email:</td>
            <td>${payer.email}</td>
        </tr>
        <tr>
            <td>Total:</td>
            <td>${transaction.amount.total}</td>
        </tr>
        <tr><td><br/></td></tr>
        
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="Get Your E-Ticket" onclick="location.href='e-ticket.jsp'" />
            </td>
        </tr>
        
    </table>
    
</div>
</body>
</html>
