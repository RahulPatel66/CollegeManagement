<head>
<title>TSEC - Student Login Page</title>
<style type="text/css">
	body{
		background-image: url("./images/bg-4.jpg");
		background-size:cover;
		background-position:center;
		background-repeat:no-repeat;
	}
	
</style>
<%@include file="components/files.jsp" %>
</head>


<%@include file="components/navbar.jsp" %>
<div class="card bg-light m-auto"id="card" style="width:30%;top:5rem;"  >
 <img class="card-img-top m-auto" src="./images/user.webp" alt="Card image cap" style="width:20%;height:20%">
<div class="card-body">
<h5 class="card-title text-center"  >Student Login Page</h5>
<%! String message=null; %>
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
<form action="StudentLogin">
		<div class="form-group">
    <label for="exampleInputEmail1">Enrollment Number</label>
    <input type="text" name="enumber" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter enrollment number">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
 
    
    <a href="ForgotePassword.jsp"class="btn " style="display:block;text-align:right;color:blue;text-decoration:underline;">Forgote Password</a>
   <div class="form-group" style="text-align:center">
 
 <input type="submit"  class="btn form-control btn-primary" value="Login" >
</div>
 
</form>
</div>

</div>