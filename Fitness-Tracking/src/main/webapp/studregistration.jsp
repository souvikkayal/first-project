<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<title>Reg page</title>
</head>
<body>
<div class="container">
 <jsp:include page="menu.jsp"></jsp:include>

 <div class="row">
      <div class="col-md-6 col-sm-8 mx-auto">
           <div class="card">
               <div class="card-body" style="background-color: #ee0fff">
                    <div class="mt-2 text-center">
                         <h3 style="color: red;">REGISTRATION</h3>
                     </div>
               
                     <div class="mt-4 text-left">
                       <form action="register" method="post">
                       
                         <div class="form-group">
                             <label for="name" class="text-uppercase font-weight-bold text-primary">Name *</label>
                             <input type="text" name="name" class="form-control" placeholder="Enter Name" required >
                         </div>
						 
						 <div class="form-group">
                             <label for="email" class="text-uppercase font-weight-bold text-primary">E-mail Id *</label>
                             <input type="text" name="email" class="form-control" placeholder="Enter E-mail Id" required >
                         </div>
						 
						 <div class="form-group">
                             <label for="mobileno" class="text-uppercase font-weight-bold text-primary">Mobile No. *</label>
                             <input type="tel" name="mobileno" class="form-control" placeholder="Enter Mobile No" required >
                         </div>
                                            
                          <div class="form-group">
                                  <label for="address" class="text-uppercase font-weight-bold text-primary">Address *:</label>
                                  <textarea placeholder="Write your Address Here"  class="form-control" rows="6" cols="48" name="address" required></textarea>
                            </div>                        
                         
                         <div class="form-group">
                             <label class="text-uppercase font-weight-bold text-primary">Courses *</label>
                            <select name="course">
                            	<option value="Not Choose Any Option">Choose Any Option</option>
							    <option value="best seller">best seller</option>
							    <option value="muscle building">muscle building</option>
							    <option value="fat burning">fat burning</option>
							    <option value="fat burning">fat burning</option>
							    <option value="muscle growth">muscle growth</option>
							    <option value="build muscle and burn fat">build muscle and burn fat</option>
							    <option value="complete athlete training">complete athlete training</option>
							    <option value="maximum muscle building">maximum muscle building</option>
							    <option value="maximum fat loss">maximum fat loss</option>
							    <option value="customizable mass building">customizable mass building</option>
							    <option value="ab training system">ab training system</option>
							    <option value="women's training system">women's training system</option>
							    <option value="body weight training system">body weight training system</option>
							    <option value="proffesional bodybuilding">profesional bodybuilding</option>
							    <option value="total body training focus on arm size">total body training focus on arm size</option>
							            
							  </select>
                         </div>
                         <div class="form-group">
                             <label class="text-uppercase font-weight-bold text-primary">Date of Joining *</label>
                             <input type="text" name="doj" placeholder="dd/mm/yyyy" class="form-control"  required>
                         </div>
                         <div class="form-group">
			             <label class="text-uppercase font-weight-bold text-primary">HEIGHT OF STUDENT * :</label>
			             <input type="text"  name="height" class="form-control" placeholder="Enter Height" required>
			            </div>
			            <div class="form-group">
			             <label class="text-uppercase font-weight-bold text-primary">WEIGHT OF STUDENT * :</label>
			             <input type="text" name="weight" class="form-control" placeholder="Enter Weight" required>
			            </div>
                          <div class="form-group">
                              <label for="password" class="text-uppercase font-weight-bold text-primary">Password *</label>
                              <input type="password" name="password" class="form-control" placeholder="Enter Password" required>
                         </div>          
                         <input type="submit" class="btn btn-success btn-block" value="LOGIN">
                     </form>
                   </div> <!-- Form tag div -->
              </div> <!-- Card Body End -->
          </div> <!-- Card End -->
       </div> <!-- Col alignment end -->
     </div> <!-- Row End -->
 </div> <!-- Container End -->

</body>
</html>