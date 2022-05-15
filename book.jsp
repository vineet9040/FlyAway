<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Ticket</title>
</head>
<body>
Flight Number: <%=session.getAttribute("fno")%>
Flight Name: <%=session.getAttribute("fname")%>
Source: <%=session.getAttribute("s1")%>
Destination: <%=session.getAttribute("d1")%>
Date of Journey: <%=session.getAttribute("date1")%>
Class: <%=session.getAttribute("c1")%>
<table border="1">
<tr><th>S.No.</th>
<th>Name</th>
<th>Age</th>
<th>Gender</th>
<th>Berth Preference</th>
<th>Senior Citizen</th>
<th>AADHAAR No.(optional)</th>
</tr>

<form method="post" action="bookconfirm.jsp">

<tr>
<td>1</td>
<td><input type="text" name="name1"/></td>
<td><input type="text" name="age1"/></td>
<td><select name="gender1">
<option value="select">Select</option>
<option value="male">Male</option>
<option value="female">Female</option>
</select></td>
<td><select name="bearth1">
<option value="no_preference">No Preference</option>
<option value="side">Side</option>
<option value="middle">Middle</option>
<option value="windowside">Windowside</option>
</select></td>
<td><input type="checkbox" name="senior1" value="senior"/></td>
<td><input type="text" name="aadhaar1"/></td>
</tr>
<tr>
<td>2</td>
<td><input type="text" name="name2"/></td>
<td><input type="text" name="age2"/></td>
<td><select name="gender2">
<option value="select">Select</option>
<option value="male">Male</option>
<option value="female">Female</option>
</select></td>
<td><select name="berth2">
<option value="no_preference">No Preference</option>
<option value="side">Side</option>
<option value="middle">Middle</option>
<option value="windowside">Windowside</option>
</select></td>
<td><input type="checkbox" name="senior2" value="senior"/></td>
<td><input type="text" name="aadhaar2"/></td>
</tr>
<tr>
<td>3</td>
<td><input type="text" name="name3"/></td>
<td><input type="text" name="age3"/></td>
<td><select name="gender3">
<option value="select">Select</option>
<option value="male">Male</option>
<option value="female">Female</option>
</select></td>
<td><select name="berth3">
<option value="no_preference">No Preference</option>
<option value="side">Side</option>
<option value="middle">Middle</option>
<option value="windowside">Windowside</option>
</select></td>
<td><input type="checkbox" name="senior3" value="senior"/></td>
<td><input type="text" name="aadhaar3" /></td>
</tr>
<tr>
<td>4</td>
<td><input type="text" name="name4"/></td>
<td><input type="text" name="age4"/></td>
<td><select name="gender4">
<option value="select">Select</option>
<option value="male">Male</option>
<option value="female">Female</option>
</select></td>
<td><select name="berth4">
<option value="no_preference">No Preference</option>
<option value="side">Side</option>
<option value="middle">Middle</option>
<option value="windowside">Windowside</option>
</select></td>
<td><input type="checkbox" name="senior4" value="senior"/></td>
<td><input type="text" name="aadhaar4"/></td>
</tr>
<tr>
<td>5</td>
<td><input type="text" name="name5"/></td>
<td><input type="text" name="age5"/></td>
<td><select name="gender5">
<option value="select">Select</option>
<option value="male">Male</option>
<option value="female">Female</option>
</select></td>
<td><select name="berth5">
<option value="no_preference">No Preference</option>
<option value="side">Side</option>
<option value="middle">Middle</option>
<option value="windowside">Windowside</option>
</select></td>
<td><input type="checkbox" name="senior5" value="senior"/></td>
<td><input type="text" name="aadhaar5"/></td>
</tr>
<tr>
<td><input type="submit" value="Submit"/></td>
<td><input type="reset" value="Reset"/></td>
</tr>
</form>
</table>


<br><br><a href='logout.jsp'>Log out</a>

</body>
</html>