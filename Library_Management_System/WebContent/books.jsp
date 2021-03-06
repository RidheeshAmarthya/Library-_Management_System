<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html  >
<head>
 

  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v5.3.0, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="assets/images/mbr-96x50.png" type="image/x-icon">
  <meta name="description" content="">
  <link rel="stylesheet" type="text/css" href="books.css">

  
  <title>Books</title>
  <link rel="stylesheet" href="assets/tether/tether.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="assets/dropdown/css/style.css">
  <link rel="stylesheet" href="assets/socicon/css/styles.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="preload" as="style" href="assets/mobirise/css/mbr-additional.css"><link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
  
</head>
<body>

<br><br><br><br>
<h3 class="mbr-section-title mbr-fonts-style align-center mb-0 display-2">Books</h3>

<table class="styled-table">
	<thead>
	<tr>
		<th>Book ID</th>
		<th>Book Name</th>
		<th>Author</th>
		<th>Price</th>
		<th>Publisher</th>
		<th>Issued Status</th>
	</tr>
	</thead>
<br><br>
<%
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
if(session.getAttribute("username")==null){
	response.sendRedirect("firstpage.html");
}

Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library_management_system", "ridheesh", "1234");
Statement st=conn.createStatement();

ResultSet resultSet = null;

String sql ="select * from book_details";
resultSet = st.executeQuery(sql);

while(resultSet.next()){
%>

<tbody>
<tr class="active-row">
<td><strong><%=resultSet.getString("book_no") %></strong></td>
<td><%=resultSet.getString("book_Name") %></td>
<td><%=resultSet.getString("author") %></td>
<td><%=resultSet.getString("price") %></td>
<td><%=resultSet.getString("publisher") %></td> 
<td><%=resultSet.getString("book_status") %></td> 
</tr>

<%
}

%>
</tbody>
</table>

	
<br><br><br><br><br><br><br><br><br>
   <section class="menu menu1 cid-sumFFPebSe" once="menu" id="menu1-2">
    

    <nav class="navbar navbar-dropdown navbar-fixed-top navbar-expand-lg">
        <div class="container-fluid">
            <div class="navbar-brand">
                <span class="navbar-logo">
                    <a href="index.html">
                        <img src="assets/images/mbr-96x50.png" alt="Mobirise" style="height: 3rem;">
                    </a>
                </span>
                <span class="navbar-caption-wrap"><a class="navbar-caption text-black text-primary display-7" href="index.html">Library Management System</a></span>
            </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <div class="hamburger">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true"><li class="nav-item"><a class="nav-link link text-black display-4" href="issue.html">Issue a Book</a></li><li class="nav-item"><a class="nav-link link text-black display-4" href="return.html">Return Books</a></li><li class="nav-item"><a class="nav-link link text-black display-4" href="books.jsp">
                            Books</a></li>
                    <li class="nav-item"><a class="nav-link link text-black text-primary display-4" href="page3.html">
                            About Us</a></li>
                    <li class="nav-item"><a class="nav-link link text-black text-primary display-4" href="page2.html">Contact Us</a>
                    </li></ul>
                
                <form method="post" action="logout.jsp"><div class="navbar-buttons mbr-section-btn"><a class="btn btn-primary display-4" href="firstpage.html">
                        Logout</a></div></form>
            </div>
        </div>
    </nav>
</section>
<section class="footer3 cid-sumHiYoAxo" once="footers" id="footer3-8">

    

    

    <div class="container">
        <div class="media-container-row align-center mbr-white">
            <div class="row row-links">
                <ul class="foot-menu">
                    
                    
                    
                    
                    
                <li class="foot-menu-item mbr-fonts-style display-7">Issue a Book</li><li class="foot-menu-item mbr-fonts-style display-7">Issued Books</li><li class="foot-menu-item mbr-fonts-style display-7">Books</li><li class="foot-menu-item mbr-fonts-style display-7">About<a href="page3.html" class="text-primary"> </a>Us</li><li class="foot-menu-item mbr-fonts-style display-7">Contact<a href="page2.html" class="text-primary"> </a>Us</li></ul>
            </div>
            
            <div class="row row-copirayt">
                <p class="mbr-text mb-0 mbr-fonts-style mbr-white align-center display-7">
                    ? Copyright 2021 Tookivi. All Rights Reserved.
                </p>
            </div>
        </div>
    </div>
</section><section style="background-color: #fff; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Helvetica Neue', Arial, sans-serif; color:#aaa; font-size:0px; padding: 0; align-items: center; display: flex;"><a href="https://mobirise.site/c" style="flex: 1 1; height: 0rem; padding-left: 1rem;"></a><p style="flex: 0 0 auto; margin:0; padding-right:1rem;"><a href="https://mobirise.site/o" style="color:#aaa;">More info</a></p></section><script src="assets/web/assets/jquery/jquery.min.js"></script>  <script src="assets/popper/popper.min.js"></script>  <script src="assets/tether/tether.min.js"></script>  <script src="assets/bootstrap/js/bootstrap.min.js"></script>  <script src="assets/smoothscroll/smooth-scroll.js"></script>  <script src="assets/dropdown/js/nav-dropdown.js"></script>  <script src="assets/dropdown/js/navbar-dropdown.js"></script>  <script src="assets/touchswipe/jquery.touch-swipe.min.js"></script>  <script src="assets/parallax/jarallax.min.js"></script>  <script src="assets/theme/js/script.js"></script>  
  
  
  
</body>
</html>