<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table border="1">
<tr><th>Flight Number</th>
<th>Flight Name</th>
<th>Source</th>
<th>Destination</th>
<th>Class</th>
<th>Date of Journey</th>
<th>Number of Seats Available</th>
<th>Book Detail</th>
</tr>
<%
String s=request.getParameter("source");
String d=request.getParameter("destination");
String date=request.getParameter("doj");
String c=request.getParameter("class");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/flightdb","root","7277030947WWe@");
Statement st =con.createStatement();

ResultSet rs=st.executeQuery("select * from flightinfo where source='"+s+ "' and destination='" + d+ "' and doj='" + date +"' and class='" +c+ "'");
while (rs.next()){
String s1=rs.getString("source");
String d1 =rs.getString("destination");
String date1=rs.getString("doj");

String c1=rs.getString("class");
String fno=rs.getString("flight_no");
String fname=rs.getString("flight_name");
String nosa=rs.getString("no_of_seat_available");


session.setAttribute("s1",s1);
session.setAttribute("d1",d1);
session.setAttribute("date1",date1);
session.setAttribute("c1",c1);
session.setAttribute("fno",fno);
session.setAttribute("fname",fname);
session.setAttribute("nosa",nosa);

%>
<tr>
<td><%=fno%></td>
<td><%=fname%></td>
<td><%=s1%></td>
<td><%=d1%></td>
<td><%=c1%></td>
<td><%=date1%></td>
<td><%=nosa%></td>
<%if (nosa.equals("0") || nosa.equals(null)){
%>
<td>N.A.</td>
<%
}
else
{
%>
<td><a href="book.jsp">Book Now</a>
<%
}
%>
</tr>
<%
}
%>
<a href='logout.jsp'>Logout</a>
</table>


</body>
</html>