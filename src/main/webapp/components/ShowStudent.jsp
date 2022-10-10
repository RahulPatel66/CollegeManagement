	<%@page import="java.sql.Connection" %>
    	<%@page import="java.sql.DriverManager" %>
    	<%@page import="java.sql.ResultSet" %>
    	<%@page import="java.io.IOException" %>
		<%@page import="java.sql.Statement"%>
<div class="modal fade" id="showStudents" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="width:100%">
  <div class="modal-dialog" role="document" >
    <div class="modal-content" style="width:94rem;margin-left:-33rem">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">All Students</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       
    
        <table class="table table-bordered" >
  

  	<%
  		Class.forName("com.mysql.jdbc.Driver");
  		Connection conisx = DriverManager.getConnection("jdbc:mysql://localhost:3307/collegemanagment","root","rahulpatel");
  		String qrisx = "select * from student";
  		Statement stisx = conisx.createStatement();
  		ResultSet rsisx = stisx.executeQuery(qrisx);
  		//rsisx.absolute(1);
  		if(rsisx.next())
  		{
  			%>
  			<thead >
    <tr>
   	
      <th scope="col">Enrollment Number</th>
      <th scope="col">Name</th>
      <th scope="col">Degree</th>
      <th scope="col">Branch</th>
      <th scope="col">Password</th>
      <th scope="col">Email</th>
      <th scope="col">Phone Number</th>
      <th scope="col">Semester</th>
    </tr>
  </thead>
  <tbody >
  			<%
  			
  			do
  			{
  				String id = rsisx.getString("id");
  		  		String name = rsisx.getString("name");
  		  		String degree = rsisx.getString("degree");
  		  		String Branch = rsisx.getString("branch");
  		  		String password = rsisx.getString("password");
  		  		//String AdmissionDate = rsisx.getString("admissiondate");
  		  		String email = rsisx.getString("email");
  		  		String Number  = rsisx.getString("phonenumber");
  		  		String img = rsisx.getString("photo");
  		  		String sem = rsisx.getString("semester");
  		  		//System.out.println(img);
  			
  	%>
  	<form action="UpdateDeleteStudent">
    <tr >
   
  	
   
      <td ><div class="form-group">
    <input type="text" class="form-control" name="id" value="<%=id%>" style="border:none;width:8rem;" readonly="readonly">
    </div></td>
      <td><div class="form-group">
    <input type="text" class="form-control" name="name" value="<%=name%>" style="border:none;width:10rem;">
    </div></td>
      <td><div class="form-group">
    <input type="text" class="form-control" name="degree" value="<%=degree%>" style="border:none;width:8rem;">
    </div></td>
      <td><div class="form-group">
    <input type="text" class="form-control" name="branch" value="<%=Branch%>" style="border:none;width:6rem;">
    </div></td>
      <td><div class="form-group">
    <input type="text" class="form-control" name="password" value="<%=password%>" style="border:none;width:8rem;">
    </div></td>
      
     <td><div class="form-group">
    <input type="text" class="form-control" name="email" value="<%=email%>" style="border:none;width:8rem;">
    </div></td>
     <td><div class="form-group">
    <input type="text" class="form-control" name="Number" value="<%=Number%>" style="border:none;width:8rem;">
    </div></td>
     <td><div class="form-group">
    <input type="text" class="form-control" name="Number" value="<%=sem%>" style="border:none;width:8rem;">
    </div></td>
   	 <td><div class="form-group">
   <input type="submit" class="btn btn-success" name="btn" value="Update" style="border:none;width:5rem;"> 
    </div></td>
   	 <td><div class="form-group">
    <input type="submit" class="btn btn-danger" name="btn" value="Delete" style="border:none;width:5rem;">
    </div></td>
 
    
    </tr>
    </form>
   <%
  			}while(rsisx.next());
  			conisx.close();
  		}
  		else
  		{
  			out.println("don`t have any Student");
  		}
   %>
    
  </tbody>
  
</table>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div>