<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>

<%
try{
String Username=request.getParameter("u");
String password=request.getParameter("p");

HttpSession s = request.getSession();
s.setAttribute("username", Username);

Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library_Management_System", "ridheesh", "1234");
Statement st=conn.createStatement();

String stat = ("SELECT * FROM login_details WHERE USERNAME='"+Username+"' AND PASSWORD='"+password+"'"); //Retreive username and passwords from users
ResultSet rs = st.executeQuery(stat); 
if(rs.next()==false) { 
    response.sendRedirect("failedadminlogin.html");
    } 
  else{
    System.out.println(Username+" login succesfully");
    
    response.sendRedirect("page1.html");
  }
}
catch(Exception e){
    System.out.println("exception catch");
    response.sendRedirect("failed.html");
}
%>

</body>
</html>