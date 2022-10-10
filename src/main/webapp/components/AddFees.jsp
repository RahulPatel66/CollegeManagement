<%@include file="./files.jsp" %>
<%@page import="java.time.LocalDate" %>

<div class="modal fade" id="AddFees" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header bg-primary text-white">
        <h5 class="modal-title " id="exampleModalLabel">Add Fees</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true" class="text-white">&times;</span>
        </button>
      </div>
      <div class="modal-body">
    <form action="AddFees" enctype="multipart/form-data" method="post">
  <div class="form-group">
    <label for="StudentEnrollment">Student Enrollment Number</label>
    <input type="text" name="StudentEnrollment" id="StudentEnrollment" class="form-control" placeholder="Enter Student Enrollment Number Here" required>
  </div>
   
   <div class="form-group">
    <label for="File">Fees Slip</label>
    <input type="file" name="FeesSlip"  accept=".jpg, .jpeg, .png, .webp, .pdf" id="File" class="form-control" placeholder="Select Fees slip Here" required>
  </div>
   <div class="form-group">
    <label for="FeesDegree">Degree</label>
    <select name="FeesDegree" class="form-control" id="FeesDegree">
    	<option value="">Select Degree</option>
    	<option value="BTech">B.Tech</option>
    	<option value="Mtech">M.Tech</option>
    </select>
    
  </div>
  
  <script type="text/javascript">
  		$(document).ready(function()
  		{
  			
  		
  			$("#FeesMTech").hide();
  			$("#FeesBtech").hide();
  			
  				$("#FeesDegree").change(function(){
  					var a = $("#FeesDegree").val();
  					if(a=="BTech"){
  						$("#FeesMTech").hide();
  			  			$("#FeesBtech").show();
  						
  					}
  					else if(a=="Mtech"){
  						$("#FeesMTech").show();
  			  			$("#FeesBtech").hide();
  					}
					
  				});
  			
  			});
  </script>
  <div class="form-group">
    <label >Branch</label>
    <select name="FeesBranch" class="form-control" id="FeesBtech" >
    	<option value="">Select BTech Branch</option>
    	<option value="CSE">CSE</option>
    	<option value="CE">CE</option>
    	<option value="ME">ME</option>
    	<option value="EC">EC</option>
    	<option value="EE">EE</option>
    
    </select>
    
      <select name="FeesBranch" class="form-control" id="FeesMTech" >
    	<option value="">Select MTech Branch</option>
    	<option value="CSE">CSE</option>
    	<option value="CE">CE</option>
    	<option value="ME">ME</option>
    	<option value="EC">EC</option>
    	<option value="EE">EE</option>
    
    </select>
    
     
    
    
  </div>
  
  
  <div class="form-group">
    <label for="semester">Select Student Current Year</label>
    <select name="currentYear" class="form-control" id="currentYear" required="required">
    	<option >Select Year</option>
    	<option value="First">First Year</option>
    	<option value="Second">Second Year</option>
    	<option value="Third">Third Year</option>
    	<option value="Fourth">Fourth Year</option>
    	
    
    </select>
    
  </div>
  <div class="form-group">
    <label for="Fees">Filed Fees</label>
    <input type="number" name="Fees" id="Fees" class="form-control" placeholder="Enter Current Filed Fees Here" required>
  </div>
  <div class="form-group">
    <label for="Date">Date</label>
    <input type="date" name="fileddate" id="Date" class="form-control" placeholder="Enter Fees Filed Date Here" required>
  </div>
  <div class="form-group">
    <label for="MobileNumber">Student Mobile Number</label>
    <input type="number" name="MobileNumber" id="MobileNumber" class="form-control" placeholder="Enter Student Mobile Number Here" required>
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