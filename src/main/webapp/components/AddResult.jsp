<%@include file="./files.jsp" %>
<%@page import="java.time.LocalDate" %>

<div class="modal fade" id="AddResult" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header bg-primary text-white">
        <h5 class="modal-title " id="exampleModalLabel">Add Result</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true" class="text-white">&times;</span>
        </button>
      </div>
      <div class="modal-body">
    <form action="AddResult" enctype="multipart/form-data" method="post">
  <div class="form-group">
    <label for="StudentEnrollment">Student Enrollment Number</label>
    <input type="text" name="StudentEnrollment" id="StudentEnrollment" class="form-control" placeholder="Enter Student Enrollment Number Here" required>
  </div>
   
   <div class="form-group">
    <label for="File">Result PDF</label>
    <input type="file" name="Resultfile"  accept=".jpg, .jpeg, .png, .webp, .pdf" id="File" class="form-control" placeholder="Select Result PDF Here" required>
  </div>
   <div class="form-group">
    <label for="ResultDegree">Degree</label>
    <select name="ResultDegree" class="form-control" id="ResultDegree">
    	<option value="">Select Degree</option>
    	<option value="BTech">B.Tech</option>
    	<option value="Mtech">M.Tech</option>
    </select>
    
  </div>
  
  <script type="text/javascript">
  		$(document).ready(function()
  		{
  			
  		
  			$("#ResultMTech").hide();
  			$("#ResultBtech").hide();
  			
  				$("#ResultDegree").change(function(){
  					var a = $("#ResultDegree").val();
  					if(a=="BTech"){
  						$("#ResultMTech").hide();
  			  			$("#ResultBtech").show();
  						
  					}
  					else if(a=="Mtech"){
  						$("#ResultMTech").show();
  			  			$("#ResultBtech").hide();
  					}
					
  				});
  			
  			});
  </script>
  <div class="form-group">
    <label >Branch</label>
    <select name="ResultBranch" class="form-control" id="ResultBtech" >
    	<option value="">Select BTech Branch</option>
    	<option value="CSE">CSE</option>
    	<option value="CE">CE</option>
    	<option value="ME">ME</option>
    	<option value="EC">EC</option>
    	<option value="EE">EE</option>
    
    </select>
    
      <select name="ResultBranch" class="form-control" id="ResultMTech" >
    	<option value="">Select MTech Branch</option>
    	<option value="CSE">CSE</option>
    	<option value="CE">CE</option>
    	<option value="ME">ME</option>
    	<option value="EC">EC</option>
    	<option value="EE">EE</option>
    
    </select>
    
     
    
    
  </div>
  
  
  <div class="form-group">
    <label for="semester">Semester</label>
    <select name="subjectsem" class="form-control" id="semester" >
    	<option value="">Select Semester</option>
    	<option value="1">1st</option>
    	<option value="2">2nd</option>
    	<option value="3">3rd</option>
    	<option value="4">4th</option>
    	<option value="5">5th</option>
   		 <option value="6">6th</option>
  		  <option value="7">7th</option>
  		  <option value="8">8th</option>
    
    </select>
    
  </div>
  <div class="form-group">
    <label for="CGPA">CGPA</label>
    <input type="text" name="CGPA" id="CGPA" class="form-control" placeholder="Enter CGPA Here" required>
  </div>
  <div class="form-group">
    <label for="SGPA">SGPA</label>
    <input type="text" name="SGPA" id="SGPA" class="form-control" placeholder="Enter SGPA Here" required>
  </div>
  <%
 		 LocalDate myObj = LocalDate.now();
         int year = myObj.getYear();
  %>
   <div class="form-group">
    <label for="Status" class="form-group">Session Year</label>
  	<select id="Status" name="session" class="form-control">
  			<option >Select Session Year</option>
  			<option value="June-<%=year%>">June-<%=year %></option>
  			<option value="December-<%=year%>">December-<%=year %></option>
  			
  	</select>
  </div>
  <div class="form-group">
    <label for="Status" class="form-group">Status</label>
  	<select id="Status" name="Status" class="form-control">
  			<option >Select Status</option>
  			<option value="Pass">Pass</option>
  			<option value="Fail">Fail</option>
  			
  	</select>
  </div>
   
   
  <div class="form-group text-center">
  <button type="submit" class="btn btn-primary text-center"  id="btn">Submit</button>
  </div>
</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal" id="btn">Close</button>
      
      </div>
    </div>
  </div>
</div>