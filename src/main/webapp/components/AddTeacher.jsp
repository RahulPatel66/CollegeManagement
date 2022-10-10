<%@include file="./files.jsp" %>
  	<div class="modal fade" id="AddTeacher" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header bg-primary text-white">
        <h5 class="modal-title " id="exampleModalLabel">Add Teacher</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true" class="text-white">&times;</span>
        </button>
      </div>
      <div class="modal-body">
    <form action="AddTeacher" enctype="multipart/form-data" method="post">
  <div class="form-group">
    <label for="TeacherName">Teacher Name</label>
    <input type="text" name="name" id="TeacherName" class="form-control" placeholder="Enter Teacher Name Here" required>
  </div>
  
   <div class="form-group">
    <label for="StudentDegree">Degree</label>
    <select name="degree" class="form-control" id="TeacherDegree">
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
  			
  			$("#TeacherBtech").hide();
  			$("#TeacherMBA").hide();
  			$("#TeacherBE").hide();
  			$("#TeacherBpahrma").hide();
  			$("#TeacherDpahrma").hide();
  			$("#TeacherMtech").hide();
  			
  				$("#TeacherDegree").change(function(){
  					var a = $("#TeacherDegree").val();
  					if(a=="MBA"){
  						$("#TeacherMBA").show();
  						$("#TeacherBtech").hide();
  			  			$("#TeacherBE").hide();
  			  			$("#TeacherBpahrma").hide();
  			  			$("#TeacherDpahrma").hide();
  			  			$("#TeacherMtech").hide();
  			  			
  						
  					}
  					else if(a=="BTech"){
  						$("#TeacherBtech").show();
  						//$("#StudentBtech").hide();
  			  			$("#TeacherMBA").hide();
  			  			$("#TeacherBE").hide();
  			  			$("#TeacherBpahrma").hide();
  			  			$("#TeacherDpahrma").hide();
  			  			$("#TeacherMtech").hide();
  					}
					else if(a=="BE"){
						$("#TeacherBE").show();
						$("#TeacherBtech").hide();
			  			$("#TeacherMBA").hide();
			  			//$("#StudentBE").hide();
			  			$("#TeacherBpahrma").hide();
			  			$("#TeacherDpahrma").hide();
			  			$("#TeacherMtech").hide();
  					}
					else if(a=="Bpahrma"){
						$("#TeacherBpahrma").show();
						$("#TeacherBtech").hide();
			  			$("#TeacherMBA").hide();
			  			$("#TeacherBE").hide();
			  			//$("#StudentBpahrma").hide();
			  			$("#TeacherDpahrma").hide();
			  			$("#TeacherMtech").hide();
					}
					else if(a=="Dpahrma"){
						$("#TeacherDpahrma").show();
						$("#TeacherBtech").hide();
			  			$("#TeacherMBA").hide();
			  			$("#TeacherBE").hide();
			  			$("#StudentBpahrma").hide();
			  			//$("#StudentDpahrma").hide();
			  			$("#TeacherMtech").hide();
					}
					else if(a=="Mtech"){
						$("#TeacherMtech").show();
						$("#TeacherBtech").hide();
			  			$("#TeacherMBA").hide();
			  			$("#TeacherBE").hide();
			  			$("#TeacherBpahrma").hide();
			  			$("#TeacherDpahrma").hide();
			  			//$("#StudentMtech").hide();
					}	
  				});
  			
  			});
  </script>
  <div class="form-group">
    <label>Select Branch</label>
    <select name="branch" class="form-control" id="TeacherBtech" >
    	<option value="">Select Branch</option>
    	<option value="CSE">CSE</option>
    	<option value="CE">CE</option>
    	<option value="ME">ME</option>
    	<option value="EC">EC</option>
    	<option value="EE">EE</option>
    
    </select>
    
      <select name="branch" class="form-control" id="TeacherMBA" >
    	<option value="">Select Branch</option>
    	<option value="CSE">CSE</option>
    	<option value="CE">CE</option>
    	<option value="ME">ME</option>
    	<option value="EC">EC</option>
    	<option value="EE">EE</option>
    
    </select>
    
      <select name="branch" class="form-control" id="TeacherBE" >
    	<option value="">Select Branch</option>
    	<option value="CSE">CSE</option>
    	<option value="CE">CE</option>
    	<option value="ME">ME</option>
    	<option value="EC">EC</option>
    	<option value="EE">EE</option>
    
    </select>
    
      <select name="branch" class="form-control" id="TeacherBpahrma" >
    	<option value="">Select Branch</option>
    	<option value="CSE">CSE</option>
    	<option value="CE">CE</option>
    	<option value="ME">ME</option>
    	<option value="EC">EC</option>
    	<option value="EE">EE</option>
    
    </select>
    
      <select name="branch" class="form-control" id="TeacherDpahrma" >
    	<option value="">Select Branch</option>
    	<option value="CSE">CSE</option>
    	<option value="CE">CE</option>
    	<option value="ME">ME</option>
    	<option value="EC">EC</option>
    	<option value="EE">EE</option>
    
    </select>
    
     <select name="branch" class="form-control" id="TeacherMtech" >
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
    <label for="StudentEmail">Teacher Email</label>
  	<input type="email" name="email" id="StudentEmail" class="form-control" placeholder="Enter Teacher Email Here" >
  </div>
  
  <div class="form-group">
    <label for="Studentnumber">Teacher Mobile Number</label>
  	<input type="number" name="number" id="Studentnumber" class="form-control" placeholder="Enter Teacher Number Here" >
  </div>
  
   <div class="form-group">
    <label for="StudentImage">Teacher Image</label>
    <input type="file" name="Image"  accept=".jpg, .jpeg, .png, .webp" id="StudentImage" class="form-control" placeholder="Enter Student Image Here" required>
  </div>
  <div class="form-group">
    <label for="Studentnumber">About Teacher</label>
  	<textarea class="form-control" name="about" rows="4" cols="4" placeholder="write About Somthing Teacher Like his college and School or all biodata" required="required"></textarea>
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
  