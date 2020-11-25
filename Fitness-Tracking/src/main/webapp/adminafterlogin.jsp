<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<title>Admin</title>
</head>
<body>

<% String sname = (String)session.getAttribute("adminstudname");
	if(sname == null)
		response.sendRedirect("adminlogin.jsp");
		%>
		
	<div class="container">
       <jsp:include page="menu.jsp"></jsp:include>
       
     <h3> WELCOME <%= sname %> </h3>
    
	</div>

</body>
</html>