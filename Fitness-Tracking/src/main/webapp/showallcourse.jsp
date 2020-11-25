<%@page import="com.example.Model.CourseModel"%>
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
<title>SHOW ALL COURSE</title>
</head>
<body>
 <%String sname = (String)session.getAttribute("adminstudname");

	if (sname == null)
		response.sendRedirect("adminlogin.jsp");

	//ArrayList<CourseModel> alist =// (ArrayList<CourseModel>)session.getAttribute("allcourselist");
	ArrayList<CourseModel> alist = (ArrayList<CourseModel>)session.getAttribute("allcourselist");
	if(alist.size()>0)
	{ 
%>
<div class="container">
<jsp:include page="menu.jsp"></jsp:include>
<br>
<h3 style="color: brown;"> ${msg} </h3>
<br>

	<table class="table table-striped">
		<tr>
			<th>COURSE ID</th>
			<th>COURSE NAME</th>
			<th>DURATION</th>
			<th>DESCRIPTION</th>
			<th>DATE OF JOINING</th>
			<th>DELETE</th>
		</tr>
	<% for(CourseModel coursemodel : alist) { %>
		<tr>
			<td><%= coursemodel.getId() %></td>
			<td><%= coursemodel.getCoursename() %></td>
			<td><%= coursemodel.getDuration() %></td>
			<td><%= coursemodel.getDescription() %></td>
			<td><%= coursemodel.getDate() %></td>
			<td><a href="/deletecourse?id=<%= coursemodel.getId()%>">DELETE</a></td>

		</tr>
	<%
	}
	%>
	</table>	
<%
	}
	else
	{
%>
<jsp:include page="menu.jsp"></jsp:include><br><br>
 <h1 style="color: red;">NO RECORDS FOUND</h1>
 <table class="table table-striped">
		<tr>
			<th>COURSE ID</th>
			<th>COURSE NAME</th>
			<th>DURATION</th>
			<th>DESCRIPTION</th>
			<th>DATE OF JOINING</th>
		</tr>
</table>
 <%
 }
%>
</div>
</body>
</html>