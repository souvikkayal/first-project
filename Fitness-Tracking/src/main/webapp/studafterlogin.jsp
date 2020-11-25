<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<title>USER DASHBOARD</title>
</head>
<body>
<%
    String sname = (String)session.getAttribute("studname");
    sname = sname.toUpperCase();
    if(sname == null)
    	response.sendRedirect("studlogin.jsp");
%>
<div class="container">
   <jsp:include page="menu.jsp"></jsp:include>
   
   <h1> WELCOME <%= sname %> </h1>

</div>
</body>
</html>