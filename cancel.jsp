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
<%
String name = (String) session.getAttribute("name");
String c1 = (String) session.getAttribute("c1");
String fno = (String) session.getAttribute("fno");



   Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flightdb",
            "root", "7277030947WWe@");
    Statement st = con.createStatement();
    //ResultSet rs;
  int i =  st.executeUpdate("delete from bookinfo where name = '"+name+"' and class = '"+c1+"'");
  int j = 0;
  if(i > 0)
   {
   j = st.executeUpdate("update flightinfo set no_of_seat_available = no_of_seat_available + 1 where flight_no = '" + fno + "' and class = '" +  c1 + "'"); 
 
   }
    
  
   
   

   if (j > 0) {
       //session.setAttribute("userid", user);
       response.sendRedirect("cancelled.jsp");
       //out.print("Ticket Booked Successfull!"+"<a href='success.jsp'>Go to Home to book another ticket</a>");
       //out.print("<br>"+"<br>");
       //out.print("<a href='logout.jsp'>Log out</a>");
   } else { 
       response.sendRedirect("history.jsp");
   }
  
 
%>
</body>
</html>