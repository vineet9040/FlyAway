<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<body>
<h1>Flight Reservation System</h1>
<form method="post" action="registration.jsp">
<table border="1">
<tr>
<th>Enter Information Here</th>
</tr>
<tr>
<td>First Name:</td>
<td><input type="text" name="fname"/></td>
</tr>
<tr>
<td>Last Name:</td>
<td><input type="text" name="lname"/></td>
</tr>
<tr>
<td>Email Id :</td>
<td><input type= "text" name="email"/></td>
</tr>
<tr>
<td>Gender :</td>
<td><input type="text" name="gender"/></td>
</tr>
<tr>
<td>Contact :</td>
<td><input type="text" name="phone" value=""/></td>
</tr>
<tr>
<td>Username :</td>
<td><input type="text" name="uname"/></td>
</tr>
<tr>
<td>Password :</td>
<td><input type="password" name="pword" /></td>
<tr>
<td><input type="submit" value="submit" /></td>
<td><input type="reset" value="Reset" /></td>
</tr>
<tr>
<td>Already registered! <a href="index.jsp">Login Here</a></td>
</tr>
</table>
</form>
</body>
</html>