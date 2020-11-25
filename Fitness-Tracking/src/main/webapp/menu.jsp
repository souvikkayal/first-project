<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<title>MENU BAR</title>
</head>
<body>
<br/>
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  
    <ul class="navbar-nav">

<%
    String asname = (String)session.getAttribute("adminstudname");
    String studid = (String)session.getAttribute("studid");

    if (asname != null && asname.equalsIgnoreCase("ADMIN"))
    {
%>
      <li class="nav-item">
        <a class="nav-link" href="/adminhome">ADMIN HOME</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/addcourse">ADD COURSE</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/viewallcourse">VIEW ALL COURSE</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/adminshowalladdmission">VIEW ALL ADDMISSION</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/adminlogout">LOGOUT</a>
      </li>
<%
    }
    else if(studid != null)
    {
 %>
        <li class="nav-item">
        <a class="nav-link" href="/studhome">USER HOME</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/showallcourse">VIEW ALL COURSE</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/studshowalladdmission">ADDMISSION</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/studlogout">LOGOUT</a>
      </li>
 <%   	
    }
    else
    {
%>
       <li class="nav-item">
        <a class="nav-link" href="/">HOME</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/studreg">REGISTRATION</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/studlogin">LOGIN</a>
      </li> 
      <li class="nav-item">
        <a class="nav-link" href="/aboutus">ABOUT US</a>
      </li>    
      <li class="nav-item">
        <a class="nav-link" href="/contactus">CONTACT US</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/adminlogin">ADMIN</a>
      </li>    
  <%
    }
  %>    
    </ul>
  </nav>
    
   <br/>


</body>
</html>