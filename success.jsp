<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
if ((session.getAttribute("userid")==null) ||(session.getAttribute("userid")=="")){
%>
You are not logged in<br/>
<%} else{
%>
<h1>Flight Reservation System</h1>
Welcome,&nbsp; <%=session.getAttribute("userid")%>
<form method="post" action="flight.jsp">
<table border="1">
<thead>
<tr>
<th>Enter Flight Details</th>
</tr>
</thead>
<tbody>
<tr>
<td>From Station:</td>
<td><input type="text" name="source"/></td>
</tr>
<tr>
<td>To Station:</td>
<td><input type="text" name="destination"/></td>
</tr>
<tr>
<td>Journey Date(""yyyy-mm-dd"):</td>
<td><input type="text" name="doj"/></td>
</tr>
<tr>
<td>Class(Ec,Bc):</td>
<td><input type="text" name="class" /></td>
</tr>
<tr>
<td><input type="submit" value="submit" /></td>
<td><input type="reset" value="Reset" /></td>
</tr>
</tbody>
</table>
</form>
<br><br><a href='history.jsp'>Book History</a>
<br><br><a href='logout.jsp'>Log out</a>
<%
}
%>
</body>
</body>
</html>