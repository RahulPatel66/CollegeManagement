<%@include file="./files.jsp" %>

<div class="modal fade" id="AddSubject" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header bg-primary text-white">
        <h5 class="modal-title " id="exampleModalLabel">Add Subject</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true" class="text-white">&times;</span>
        </button>
      </div>
      <div class="modal-body">
    <form action="AddSubject" >
  <div class="form-group">
    <label for="StudentName">Subject Name</label>
    <input type="text" name="name" id="StudentName" class="form-control" placeholder="Enter Subject Name Here" required>
  </div>
  <div class="form-group">
    <label for="StudentEnrollment">Subject Code</label>
    <input type="text" name="subjectcode" id="StudentEnrollment" class="form-control" placeholder="Enter Subject Code Here" required>
  </div>
   <div class="form-group">
    <label for="StudentEnrollment">Subject Teacher</label>
    <input type="text" name="subjectTeacher" id="StudentEnrollment" class="form-control" placeholder="Enter Subject Teacher Here" required>
  </div>
   
   <div class="form-group">
    <label for="SubjectDegree">Degree</label>
    <select name="subjectDegree" class="form-control" id="SubjectDegree">
    	<option value="">Select Degree</option>
    	<option value="BTech">B.Tech</option>
    	<option value="Mtech">M.Tech</option>
    </select>
    
  </div>
  
  <script type="text/javascript">
  		$(document).ready(function()
  		{
  			
  		
  			$("#SubjectMTech").hide();
  			$("#SubjectBtech").hide();
  			
  				$("#SubjectDegree").change(function(){
  					var a = $("#SubjectDegree").val();
  					if(a=="BTech"){
  						$("#SubjectMTech").hide();
  			  			$("#SubjectBtech").show();
  						
  					}
  					else if(a=="Mtech"){
  						$("#SubjectMTech").show();
  			  			$("#SubjectBtech").hide();
  					}
					
  				});
  			
  			});
  </script>
  <div class="form-group">
    <label >Branch</label>
    <select name="subjectBranch" class="form-control" id="SubjectBtech" >
    	<option value="">Select BTech Branch</option>
    	<option value="CSE">CSE</option>
    	<option value="CE">CE</option>
    	<option value="ME">ME</option>
    	<option value="EC">EC</option>
    	<option value="EE">EE</option>
    
    </select>
    
      <select name="branch" class="form-control" id="SubjectMTech" >
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