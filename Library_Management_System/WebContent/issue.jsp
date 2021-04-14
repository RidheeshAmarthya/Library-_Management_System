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
int book=Integer.parseInt(request.getParameter("b"));


Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library_management_system", "ridheesh", "1234");
Statement st=conn.createStatement();
ResultSet resultSet=st.executeQuery("select book_status from book_details where book_no="+book+"");
resultSet.next();
System.out.println(resultSet.getString("book_status"));
String t= resultSet.getString("book_status");
if(t.equals("0")){
    
System.out.println("check");
int i=st.executeUpdate("insert into issue(student_id,book_no,date_of_issue)  values('"+user+"','"+book+"',now())");
i= st.executeUpdate("update issue set date_of_return =date_add(now(), interval 7 day)");
i=st.executeUpdate("update  book_details set book_status=1 where book_no="+book+";");


System.out.println(book+" issued successfully");
response.sendRedirect("success.html");}
}
catch(Exception e){
    System.out.println("exception catch");
    response.sendRedirect("failed.html");
}
%>

</body>
</html>

