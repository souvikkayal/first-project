<%@page import="com.example.Model.AddmissionModel"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<title>Show Bookings</title>
</head>
<body>
<%
	String admin = (String)session.getAttribute("adminstudname");
	
	if(admin == null)
		response.sendRedirect("adminlogin.jsp");
	
	ArrayList<AddmissionModel> alist = (ArrayList<AddmissionModel>)session.getAttribute("addmissionlist");
	if(alist.size()>0)
	{
%>
<div class="container">
<jsp:include page="menu.jsp"></jsp:include><br><br>
<!-- <br><br>
	<form action="" method="post">
	<input type="tel" name="courseid" placeholder="Enter Course Id" required>
	<input type="submit" value="SEARCH">
	</form>
<br><br>  -->

<table class="table table-striped">
	<tr>
		<th>ADDMISSION ID</th>
		<th>COURSE ID</th>
		<th>NAME</th>
		<th>E-MAIL</th>
		<th>HEIGHT</th>
		<th>WEIGHT</th>
	</tr>
	<%for(AddmissionModel addmissionmodel : alist){ %>
	<tr>
		<td><%= addmissionmodel.getAddmissionid()%></td>
		<td><%= addmissionmodel.getCourseid()%></td>
		<td><%= addmissionmodel.getName()%></td>
		<td><%= addmissionmodel.getEmail()%></td>
		<td><%= addmissionmodel.getHeight()%></td> 
		<td><%= addmissionmodel.getWeight()%></td>
	</tr>
	<%}%>
</table>
<%}
	else
	{%>
	<jsp:include page="menu.jsp"></jsp:include><br><br>
<h1 style="brown: red;">NO RECORDS FOUND</h1>
<table class="table table-striped">
	<tr>
		<th>ADDMISSION ID</th>
		<th>COURSE ID</th>
		<th>NAME</th>
		<th>E-MAIL</th>
		<th>HEIGHT</th>
		<th>WEIGHT</th>
	</tr>
</table>
 <%
 }
%>


</div>
</body>
</html>