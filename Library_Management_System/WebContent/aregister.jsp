<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.*,java.util.*"%>

<!DOCTYPE html>
<html>
<body>

<%
try{
String Username=request.getParameter("username");
String password=request.getParameter("password");
String repassword=request.getParameter("repassword");
String usertype=request.getParameter("usertype");
int user_type=Integer.parseInt(usertype);

    
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library_management_system", "ridheesh", "1234");
Statement st=conn.createStatement();
if(password.equals(repassword)){    
    System.out.println(password+"  "+repassword);
    int i=st.executeUpdate("insert into login_details values('"+Username+"','"+password+"','"+user_type+"')");
    System.out.println(Username+"registered successfully");
    response.sendRedirect("success.html");
}

else {
	out.println(Username+"Not registered successfully");
	response.sendRedirect("failedadminregistration.html");
}
}
catch(Exception e){
    System.out.println("exception catch");
    response.sendRedirect("failed.html");
}
    

%>


</body>
</html>