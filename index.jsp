<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight Reservation system</title>
</head>
<body>
<h1>Flight Booking System</h1>
<form method="post" action="login.jsp">
<table border="1">
<tr>
<th>Login Here</th>
</tr>
<tr>
<td>User Name</td>
<td><input type="text" name="uname" value=""/></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="pass" value=""/></td>
</tr>
<tr>
<td><input type="submit" value="Login"/></td>
<td><input type="reset" value="Reset"/></td>
</tr>
<tr>
<td>Yet not Register!! <a href="reg.jsp">Register</a></td>
</tr>
</table>
</form>
</body>
</html>