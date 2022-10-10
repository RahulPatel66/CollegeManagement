

<nav class="navbar navbar-expand-lg navbar-dark fixed-top" style="background:indigo;">
  <a class="navbar-brand shadow" href="index.jsp"><img alt="" src="./images/tsec-logo.jpg" style="width:2.5rem;height:2.5rem;border-radius: 25px;"> </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse "  id="navbarSupportedContent">

    <ul class="navbar-nav   mr-auto">
      <li class="nav-item  " >
        <a class="nav-link text-white" href="./index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item ">
        <a class="nav-link text-white"  href="./importentnotic.jsp">Important Notice</a>
      </li>
      <li class="nav-item ">
        <a class="nav-link text-white" href="./Library.jsp">Library</a>
      </li>  
      <li class="nav-item ">
        <a class="nav-link text-white" href="./SubjectInfo.jsp">Subject Information</a>
      </li>
      
      <li class="nav-item ">
        <a class="nav-link text-white" href="./Result.jsp">Result</a>
      </li>
      
       <li class="nav-item ">
        <a class="nav-link text-white" href="./AccountInfo.jsp">Account Information</a>
      </li> 
       <li class="nav-item ">
        <a class="nav-link text-white" href="./Notes.jsp">Notes</a>
      </li>
      <li class="nav-item ">
        <a class="nav-link text-white" href="./Syllabus.jsp">Syllabus</a>
      </li>  
      <%
      		String admin=(String)session.getAttribute("Admin");
      		if(admin!=null)
      		{
      %>
       <li class="nav-item ">
        <a class="nav-link text-white" href="./StudentMessage.jsp">Student Message</a>
      </li>  
      <%} %>
    </ul>
    
   
   <%! String name=null;  %>
   <%! String email=null; %>
   <%! String photo=null; %>
   <%! String enumber=null; %>
   <%! String Admin=null; %>
   <%! String degree = null; %>
   <%! String branch=null; %>
   <%! String semester=null; %>
   <%! String mobilenummber=null; %>
   <%
   		
	 name =(String) session.getAttribute("name");
   	 email = (String) session.getAttribute("email");
 	 photo = (String) session.getAttribute("photo");
 	 enumber = (String) session.getAttribute("enumber");
   	 Admin = (String)session.getAttribute("Admin");
   	degree = (String)session.getAttribute("degree");
   	branch = (String)session.getAttribute("branch");
   	semester =(String)session.getAttribute("sem");
   	mobilenummber=(String)session.getAttribute("number");
   	if(name!=null&&email!=null)
	{
%>
		<div class="nav-item" style="margin-top:-0.5rem;margin-bottom:-0.5rem;">
		
		 <a class="nav-link  text-white " href="#" data-toggle="modal" data-target="#navbarDropdown" >
         <i class="bi bi-person-circle " style="font-size:1.5rem;"></i>
        </a>
		</div>
  	
  
<%
	
	}
	else
	{
%>

    <div class="nav-item dropdown " >
        <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-toggle="dropdown"  aria-haspopup="true" aria-expanded="false">
         <i class="bi bi-person-fill" style="margin-right:-0.4rem;">Login</i>
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="StudentSignIn.jsp">Student</a>
          <a class="dropdown-item" href="AdminLogin.jsp">Admin</a>
          
        </div>
      </div>
  <%
  }
  %>
  
  </div>
</nav>

       
    
    
    <!-- personal detail model start from here -->
    
<%
    if(Admin==null)
    {
%>
<div class="modal" tabindex="-1" role="dialog" id="navbarDropdown">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" style="font-family:cursue;">Personal Details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center card" style="align-item:center;justify-content:center;">
         <img src="./StudentProfile/<%=photo %>" alt="Student Image" class="card-image-top m-auto" style="width:7rem;height:9rem;border-radius: 40%;">
         <div class="card-body">
           <div  style="font-weight: bold;" class="card-title">Name:- <%=name %></div>
           <div  style="margin-bottom: 1rem;" class="card-text">Email:- <%=email %></div>
            <div  style="margin-bottom: 1rem;" class="card-text">Enrollment No.:- <%=enumber %></div>
           </div>
           <div class="row">
           
           <div class="btn btn-success text-white p-1 col-sm-5"  style="text-decoration:none;"><a href="#" style="text-decoration:none;font-size:0.8rem;"  class="text-white"><i class="bi bi-patch-question-fill"></i> Manage Profile Settings</a></div>
            <div class="btn btn-danger text-white p-1 ml-auto col-sm-3"  style="text-decoration:none;"><a href="LogOut" style="text-decoration:none;font-size:0.8rem;" class="text-white" ><i class="bi bi-box-arrow-right"></i> Log Out</a></div>
           
           </div>
      </div>
      <div class="modal-footer">
     
    
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<%
    
    }
    else
    {
%>
 
    
 <div class="modal" tabindex="-1" role="dialog" id="navbarDropdown">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" style="font-family:cursue;">Personal Details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center card" style="align-item:center;justify-content:center;">
         <img src="images/prifile.jpeg" alt="Admin Image" class="card-image-top m-auto" style="width:7rem;height:9rem;border-radius: 40%;">
         <div class="card-body">
           <div  style="font-weight: bold;" class="card-title">Name:- <%=name %></div>
           <div  style="margin-bottom: 1rem;" class="card-text">Email:- <%=email %></div>
           </div>
           <div class="row">
           
           <div class="btn btn-success text-white p-1 col-sm-5"  style="text-decoration:none;"><a href="#" style="text-decoration:none;font-size:0.8rem;"  class="text-white"><i class="bi bi-patch-question-fill"></i> Manage Profile Settings</a></div>
            <div class="btn btn-danger text-white p-1 ml-auto col-sm-3"  style="text-decoration:none;"><a href="LogOut" style="text-decoration:none;font-size:0.8rem;" class="text-white" ><i class="bi bi-box-arrow-right"></i> Log Out</a></div>
           
           </div>
      </div>
      <div class="modal-footer">
     
      <div class="btn btn-dark text-white mr-auto p-1"  style="float: left;text-decoration:none;font-size:0.8rem;"><a href="Admin.jsp" style="text-decoration:none;"  class="text-white"><i class="bi bi-arrow-right-circle-fill"></i> Go To Admin Page</a></div>
      
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
   <%
      
      	}
      
      %>
 <!-- personal detail model end from here -->
 
 