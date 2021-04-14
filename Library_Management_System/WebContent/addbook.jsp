<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>book addition</title>
</head>
<body>
        

<%
try{
String bookname=request.getParameter("bn");
String authorname=request.getParameter("an");
String price=request.getParameter("p");
String publisher=request.getParameter("pub");
int pri= Integer.parseInt(price);

    
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library_management_system", "ridheesh", "1234");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into book_details(book_Name,author,price,publisher) values('"+bookname+"','"+authorname+"',"+pri+",'"+publisher+"')");

System.out.println(bookname+"added successfully");
response.sendRedirect("success.html");
}
catch(Exception e){
    System.out.println("exception catch");
    response.sendRedirect("failed.html");
}
  %>

</body>
</html>