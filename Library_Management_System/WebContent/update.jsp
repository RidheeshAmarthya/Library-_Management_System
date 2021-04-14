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
String oldBookNo=request.getParameter("bno");

String newBookName=request.getParameter("bnn");
String newAuthorName=request.getParameter("ann");
String newPrice=request.getParameter("pn");
String newPublisher=request.getParameter("pubn");
String newBookStatus=request.getParameter("bsn");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library_Management_System", "ridheesh", "1234");
Statement st=conn.createStatement();

int i=st.executeUpdate("UPDATE book_details set book_Name='"+newBookName+"', author='"+newAuthorName+"',price="+newPrice+",publisher='"+newPublisher+"',book_status="+newBookStatus+" where book_no = "+oldBookNo);
System.out.println(oldBookNo + " issued successfully");
response.sendRedirect("success.html");
}
catch(Exception e){
    System.out.println("exception catch");
    response.sendRedirect("failed.html");
}

%>

</body>
</html>