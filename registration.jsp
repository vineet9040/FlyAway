<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>registration</title>
</head>
<body>
   
    

<% 
String fn=request.getParameter("fname");
String ln=request.getParameter("lname");
String em=request.getParameter("email");
String ge=request.getParameter("gender");
String ph=request.getParameter("phone");
String un1=request.getParameter("uname");
String pw1=request.getParameter("pword");
Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/flightdb","root","7277030947WWe@");
Statement st= con.createStatement();
//ResultSet rs;
int i = st.executeUpdate("insert into userinfo(fname, lname, email, gender, phone, uname, pword) values ('" + fn + "','"+ ln + "','"+ em + "','"+ ge+ "','" +ph+ "','"+ un1 + "','" + pw1 + "')");
if(i>0){
	//session.setAttribute("userid",user);
	response.sendRedirect("Welcome.jsp");
	//out.print(Registration Successful!"+"<a href='index.jsp'>Go to Login</a>");
}
else{
	response.sendRedirect("reg.jsp");
}
%>
</body>
</html>