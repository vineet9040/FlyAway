<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
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
<th>Sourse</th>
<th>Destination</th>
<th>Date</th>
<th>Class</th>
<th>Name</th>
<th>Age</th>
<th>Gender</th>
<th>Seat</th>
<th>Cancellation</th>
</tr>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/flightdb","root","7277030947WWe@");
Statement st=con.createStatement();
ResultSet rs;
rs=st.executeQuery("select * from bookinfo");
while (rs.next()){

String fno=rs.getString("flight_no");
String fname=rs.getString("flight_name");
String s1=rs.getString("source");
String d1=rs.getString("destination");
String date1=rs.getString("date");
String c1=rs.getString("class");
String name=rs.getString("name");
String age=rs.getString("age");
String gender=rs.getString("gender");
String seat=rs.getString("seat");

session.setAttribute("name",name);
session.setAttribute("c1",c1);
session.setAttribute("fno",fno);
%>
<tr>
<td><a href="cancel.jsp">Cancel1 Now</a></td>

</tr>
<%
}
%>
<a href='logout.jsp'>Logout</a>
</table>
</body>
</html>