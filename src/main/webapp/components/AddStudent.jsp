
  	<div class="modal fade" id="AddStudent" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header bg-primary text-white">
        <h5 class="modal-title " id="exampleModalLabel">Add Student</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true" class="text-white">&times;</span>
        </button>
      </div>
      <div class="modal-body">
    <form action="Addstudent" enctype="multipart/form-data" method="post">
  <div class="form-group">
    <label for="StudentName">Student Name</label>
    <input type="text" name="name" id="StudentName" class="form-control" placeholder="Enter Student Name Here" required>
  </div>
  <div class="form-group">
    <label for="StudentEnrollment">Student Enrollment Number</label>
    <input type="text" name="enumber" id="StudentEnrollment" class="form-control" placeholder="Enter Student Enrollment Number Here" required>
  </div>
   <div class="form-group">
    <label for="StudentDegree">Degree</label>
    <select name="degree" class="form-control" id="StudentDegree">
    	<option value="">Select Degree</option>
    	<option value="MBA">MBA</option>
    	<option value="BTech">B.Tech</option>
    	<option value="BE">BE</option>
    	<option value="Bpahrma">B.pahrma</option>
    	<option value="Dpahrma">D.pahrma</option>
    	<option value="Mtech">M.Tech</option>
    </select>
    
  </div>
  
  <script type="text/javascript">
  		$(document).ready(function()
  		{
  			
  			$("#StudentBtech").hide();
  			$("#StudentMBA").hide();
  			$("#StudentBE").hide();
  			$("#StudentBpahrma").hide();
  			$("#StudentDpahrma").hide();
  			$("#StudentMtech").hide();
  			
  				$("#StudentDegree").change(function(){
  					var a = $("#StudentDegree").val();
  					if(a=="MBA"){
  						$("#StudentMBA").show();
  						$("#StudentBtech").hide();
  			  			$("#StudentBE").hide();
  			  			$("#StudentBpahrma").hide();
  			  			$("#StudentDpahrma").hide();
  			  			$("#StudentMtech").hide();
  						
  					}
  					else if(a=="BTech"){
  						$("#StudentBtech").show();
  						//$("#StudentBtech").hide();
  			  			$("#StudentMBA").hide();
  			  			$("#StudentBE").hide();
  			  			$("#StudentBpahrma").hide();
  			  			$("#StudentDpahrma").hide();
  			  			$("#StudentMtech").hide();
  					}
					else if(a=="BE"){
						$("#StudentBE").show();
						$("#StudentBtech").hide();
			  			$("#StudentMBA").hide();
			  			//$("#StudentBE").hide();
			  			$("#StudentBpahrma").hide();
			  			$("#StudentDpahrma").hide();
			  			$("#StudentMtech").hide();
  					}
					else if(a=="Bpahrma"){
						$("#StudentBpahrma").show();
						$("#StudentBtech").hide();
			  			$("#StudentMBA").hide();
			  			$("#StudentBE").hide();
			  			//$("#StudentBpahrma").hide();
			  			$("#StudentDpahrma").hide();
			  			$("#StudentMtech").hide();
					}
					else if(a=="Dpahrma"){
						$("#StudentDpahrma").show();
						$("#StudentBtech").hide();
			  			$("#StudentMBA").hide();
			  			$("#StudentBE").hide();
			  			$("#StudentBpahrma").hide();
			  			//$("#StudentDpahrma").hide();
			  			$("#StudentMtech").hide();
					}
					else if(a=="Mtech"){
						$("#StudentMtech").show();
						$("#StudentBtech").hide();
			  			$("#StudentMBA").hide();
			  			$("#StudentBE").hide();
			  			$("#StudentBpahrma").hide();
			  			$("#StudentDpahrma").hide();
			  			//$("#StudentMtech").hide();
					}	
  				});
  			
  			});
  </script>
  <div class="form-group">
    <label >Branch</label>
    <select name="branch" class="form-control" id="StudentBtech" >
    	<option value="">Select Branch</option>
    	<option value="CSE">CSE</option>
    	<option value="CE">CE</option>
    	<option value="ME">ME</option>
    	<option value="EC">EC</option>
    	<option value="EE">EE</option>
    
    </select>
    
      <select name="branch" class="form-control" id="StudentMBA" >
    	<option value="">Select Branch</option>
    	<option value="CSE">CSE</option>
    	<option value="CE">CE</option>
    	<option value="ME">ME</option>
    	<option value="EC">EC</option>
    	<option value="EE">EE</option>
    
    </select>
    
      <select name="branch" class="form-control" id="StudentBE" >
    	<option value="">Select Branch</option>
    	<option value="CSE">CSE</option>
    	<option value="CE">CE</option>
    	<option value="ME">ME</option>
    	<option value="EC">EC</option>
    	<option value="EE">EE</option>
    
    </select>
    
      <select name="branch" class="form-control" id="StudentBpahrma" >
    	<option value="">Select Branch</option>
    	<option value="CSE">CSE</option>
    	<option value="CE">CE</option>
    	<option value="ME">ME</option>
    	<option value="EC">EC</option>
    	<option value="EE">EE</option>
    
    </select>
    
      <select name="branch" class="form-control" id="StudentDpahrma" >
    	<option value="">Select Branch</option>
    	<option value="CSE">CSE</option>
    	<option value="CE">CE</option>
    	<option value="ME">ME</option>
    	<option value="EC">EC</option>
    	<option value="EE">EE</option>
    
    </select>
    
     <select name="branch" class="form-control" id="StudentMtech" >
    	<option value="">Select Branch</option>
    	<option value="CSE">CSE</option>
    	<option value="CE">CE</option>
    	<option value="ME">ME</option>
    	<option value="EC">EC</option>
    	<option value="EE">EE</option>
    
    </select>
    
  </div>
  
   <div class="form-group">
    <label for="studentpassword">Password</label>
   <input type="password" name="password" id="studentpassword" class="form-control" placeholder="Enter Password Here" >
  </div>
  
 
  <div class="form-group">
    <label for="StudentEmail">Student Email</label>
  	<input type="email" name="email" id="StudentEmail" class="form-control" placeholder="Enter Student Email Here" >
  </div>
  
  <div class="form-group">
    <label for="Studentnumber">Student Mobile Number</label>
  	<input type="number" name="number" id="Studentnumber" class="form-control" placeholder="Enter Student Number Here" >
  </div>
  
   <div class="form-group">
    <label for="StudentImage">Student Image</label>
    <input type="file" name="Image"  accept=".jpg, .jpeg, .png, .webp" id="StudentImage" class="form-control" placeholder="Enter Student Image Here" required>
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
  