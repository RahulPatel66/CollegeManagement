<head>
<title>TSEC - Student ForgotePassword Page</title>
<style type="text/css">
body{
		background-image: url("./images/bg-4.jpg");
		background-size:cover;
		background-position:center;
		background-repeat:no-repeat;
		
	}
	
</style>
</head>

<body >
<%@include file="components/navbar.jsp" %>
<div class="card bg-light m-auto " style="width:30%;top:5rem;" >
 <img class="card-img-top m-auto" src="./images/user.webp" alt="Card image cap" style="width:20%;height:20%">
<div class="card-body">
<h5 class="card-title text-center" style="text-decoration:underline; margin-top:-1rem;" >Student Forgot Password Page</h5>

<%!String message=null; %>
<%
	message=(String)session.getAttribute("message");
	if(message!=null)
	{
		

%>

 <div class="alert alert-warning alert-dismissible">
  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong><%=message %></strong>
</div>

<%
	session.removeAttribute("message");
	}
%>
<form action="StudentForgotePassword" >
<div class="form-group ">
    <label for="name">User Name</label>
    <input type="text" id="name" class="form-control" name="name"  placeholder="Enter Name Here">
    
  </div>
	<div class="form-group">
    <label for="email1">Enrollment Number</label>
    <input type="text" id="emaill" class="form-control" name="enumber" placeholder="Enter Enrollment number Here">
    
  </div>
  <div class="form-group">
    <label for="number">Phone Number</label>
    <input type="number" id="number" class="form-control" name="number" placeholder="Enter Number Here">   
  </div>
  
  
  <div class="form-group">
    <label for="Password1">New Password</label>
    <input type="password" class="form-control" name="password" id="Password1" maxlength="20" minlength="8" placeholder="Enter New Password Here">
  </div>
   
    
  <div class="form-group" style="text-align:center">
 
 <input type="submit"  class="btn form-control btn-primary" value="ForGote Password" >
</div>
 <a href="StudentSignIn.jsp"style="display:block;text-align:right;color:blue;text-decoration:underline;">Go TO Login Page</a>

</form>
</div>

</div>
</body>