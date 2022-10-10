<%@include file="components/files.jsp"%>

<% 
     String Studentname =(String) session.getAttribute("name");
   	 String Studentemail = (String) session.getAttribute("email");
 	 String  Studentenumber = (String) session.getAttribute("enumber");
 	 
%>
<section id="contectus" style="margin-top:3rem;">
   <h1 class="heading"> Contact <span>US</span> </h1>
<div class="container">
  <div class="row" style="width:100%;height:30rem;">
    <div class="col-sm" >
    	<img src="./images/contactus.jpg" style="width:100%;height:30rem;border-redius:1rem;">
    </div>
    <div class="col-sm">
    <div class="card" style="width: 100%;height:100%">
    <div class="card-body">
    <form action="ContectUs">
    <div class="form-group">
    <label for="exampleInputName">Name</label>
    <% if(Studentname!=null){%>
    <input type="text" name="name" class="form-control" id="exampleInputName"  value="<%=Studentname %>" placeholder="Enter Name Here " readonly>
    <%} else{%>
    <input type="text" class="form-control" id="exampleInputName"   placeholder="Enter Name Here " >
    <%} %>
  </div>
  <div class="form-group">
    <label for="exampleInputEnrollment">Enrollment Number</label>
     <% if(Studentenumber!=null){%>
    <input type="text" name="enumber" class="form-control" id="exampleInputEnrollment" value="<%=Studentenumber %>"  placeholder="Enter Enrollment number" readonly>
     <%} else{%>
      <input type="text" class="form-control" id="exampleInputEnrollment"   placeholder="Enter Enrollment number" >
      <%} %>
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
       <% if(Studentemail!=null){%>
    <input type="email" name="email" class="form-control" id="exampleInputEmail1" value="<%=Studentemail %>" placeholder="Enter email Here" readonly>
     <%}else{ %>
      <input type="email" class="form-control" id="exampleInputEmail1"  placeholder="Enter email Here" >
      <%} %>
  </div>
  <div class="form-group">
    <label for="exampleInputMessage">Message</label>
    <textarea rows="3" cols="4"  class="form-control" name="message" placeholder="Enter Your Massage Here" style="width:100%;"></textarea>
  </div>
    <% if(Studentenumber!=null){%>
  <button type="submit" class="btn btn-primary">Submit</button>
  <%}else{ %>
   <button type="submit" class="btn btn-primary" title="Please! Login First" disabled>Submit</button>
  <%} %>
</form>
</div>
</div>
    </div>
    
  </div>
</div>

</section>