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
<title>SHOW ALL COURSE FOR STUDENT</title>
</head>
<body>
<div class="container">
<%String usern = (String)session.getAttribute("studid");

	if (usern == null)
		response.sendRedirect("studlogin.jsp");

	ArrayList<CourseModel> aclist = (ArrayList<CourseModel>)session.getAttribute("clist");
	if(aclist.size()>0)
	{
%>

<jsp:include page="menu.jsp"></jsp:include>
<br><br>
	<form action="searchbycourse" method="post">
	<input type="text" name="coursename" placeholder="Enter Course Name" required>
	<input type="submit" value="SEARCH">
	</form>
<br><br>
	<table class="table table-striped">
		<tr>
			<th>COURSE NAME</th>
			<th>DURATION</th>
			<th>DESCRIPTION</th>
			<th>DATE</th>
			<th>CLICK</th>
		</tr>
	<% 
		for(CourseModel coursemodel : aclist) 
		{
	%>
		<tr>
			<td><%= coursemodel.getCoursename() %></td>
			<td><%= coursemodel.getDuration() %></td>
			<td><%= coursemodel.getDescription() %></td>
			<td><%= coursemodel.getDate() %></td>
						
			<td><a href="applyaddmission.jsp?id= <%= coursemodel.getId()%> ">ADDMISSION</a></td>
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
 	<jsp:include page="menu.jsp"></jsp:include>
<br>
<h4>NO RECORDS </h4>
<table class="table table-striped">
	<tr>
			<th>COURSE NAME</th>
			<th>DURATION</th>
			<th>DESCRIPTION</th>
			<th>DATE</th>
			<th>CLICK</th>
		</tr>
</table>
 <%
 }
%>
</div>
</body>
</html>