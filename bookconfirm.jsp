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
String fno1 = (String) session.getAttribute("fno");
String fname1 = (String) session.getAttribute("fname");
String source1 = (String) session.getAttribute("s1");
String destination1 = (String) session.getAttribute("d1");
String date1 = (String) session.getAttribute("date1");
String class1 = (String) session.getAttribute("c1");
String nosa1 = (String) session.getAttribute("nosa");
int nosa2=Integer.parseInt(nosa1);

System.out.println(fno1+" "+fname1+" "+source1+" "+destination1+" "+date1+" "+class1+" "+nosa1);
int j;   
for(j = 1; j <= 6; j++)
   {
    String n=request.getParameter("name"+j);
	String a=request.getParameter("age"+j);
	String g=request.getParameter("gender"+j);
	String b=request.getParameter("berth"+j);
	String s=request.getParameter("senior"+j);
	String ad=request.getParameter("aadhaar"+j);
	System.out.println(n+" "+a+" "+g+" "+b+" "+s+" "+ad);
	
    if(n !=null && nosa2 > 0 )
    {
   Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flightdb",
            "root", "7277030947WWe@");
    Statement st = con.createStatement();
    //ResultSet rs;
    st.executeUpdate("insert into bookinfo(flight_no , flight_name, source, destination, date, class, name, age, gender, berth ,senior, aadhaar) values ('" + fno1 + "','"+ fname1 + "','"+ source1 + "','"+ destination1 + "','"+ date1+ "','"+class1+ "','"+ n + "','" + a + "','" + g + "','" + b + "','" + s + "','" + ad + "')");
   
    st.executeUpdate("update flightinfo set no_of_seat_available = no_of_seat_available - 1 where flight_no = '" + fno1 + "' and class = '" +  class1 + "'"); 
    nosa2 = nosa2-1;
    }
    
  
   
   }

   if (j == 7) {
       //session.setAttribute("userid", user);
       response.sendRedirect("booked.jsp");
       //out.print("Ticket Booked Successfull!"+"<a href='success.jsp'>Go to Home to book another ticket</a>");
       //out.print("<br>"+"<br>");
       //out.print("<a href='logout.jsp'>Log out</a>");
   } else { 
       response.sendRedirect("book.jsp");
   }
  
 
%>
</body>
</html>