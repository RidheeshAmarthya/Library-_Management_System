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
String user=request.getParameter("u");
String book=request.getParameter("b");
String date=request.getParameter("i");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library_Management_System", "ridheesh", "1234");
Statement st=conn.createStatement();

int i = st.executeUpdate("DELETE FROM issue WHERE book_no = "+book);
st.executeUpdate("update  book_details set book_status=0 where book_no="+book);
System.out.println(book+" Returned successfully" + i);

if(i==1)
	response.sendRedirect("success.html");
else
	response.sendRedirect("failed.html");
}
catch(Exception e){
    System.out.println("exception catch");
    response.sendRedirect("failed.html");
}
%>

</body>
</html>