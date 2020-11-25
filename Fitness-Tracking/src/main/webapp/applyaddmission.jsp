<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>APPLY FOR ADDMISSION</title>
</head>
<body>

  <%
     String id = (String)request.getParameter("id");
     String studid = (String)session.getAttribute("studid");
     String studname = (String)session.getAttribute("studname");
     

	if (studid == null)
		response.sendRedirect("studlogin.jsp");%>
<div class="container">
 <jsp:include page="menu.jsp"></jsp:include>

 <div class="row">
      <div class="col-md-6 col-sm-8 mx-auto">
           <div class="card">
               <div class="card-body" style="background-color: #ee0fff">
                    <div class="mt-2 text-center">
                         <h3 style="color: pink;">REGISTRATION</h3>
                         <h3 style="color: red;">${massage}</h3>
                     </div>
               
                     <div class="mt-4 text-left">
                       <form action="course" method="POST">

				        <div class="form-group">
				         <label class="text-uppercase font-weight-bold text-primary">COURSE ID :</label>
				         <input type="text" value="<%= id %>" name="courseid" class="form-control" readonly="readonly">
				        </div>
    
			            <div class="form-group">
			             <label class="text-uppercase font-weight-bold text-primary">STUDENT EMAIL :</label>
			             <input type="text" id="email" name="email" value="<%= studid %>" class="form-control" readonly="readonly">
			            </div>
			
			            <div class="form-group">
			             <label class="text-uppercase font-weight-bold text-primary">STUDENT NAME :</label>
			             <input type="text" id="name" name="name" value="<%= studname %>" class="form-control" readonly="readonly">
			            </div>
			            
			            
			            <div class="form-group">
			             <label class="text-uppercase font-weight-bold text-primary">HEIGHT OF STUDENT * :</label>
			             <input type="text" id="height" name="height" class="form-control" required>
			            </div>
			            <div class="form-group">
			             <label class="text-uppercase font-weight-bold text-primary">WEIGHT OF STUDENT * :</label>
			             <input type="text" id="weight" name="weight" class="form-control" required>
			            </div>
			            <input type="submit" class="btn btn-success btn-block" value="APPLY">


                     </form>
                   </div> <!-- Form tag div -->
              </div> <!-- Card Body End -->
          </div> <!-- Card End -->
       </div> <!-- Col alignment end -->
     </div> <!-- Row End -->
 </div> <!-- Container End -->
    

</body>
</html>