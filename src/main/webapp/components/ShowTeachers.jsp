	<%@page import="java.sql.Connection" %>
    	<%@page import="java.sql.DriverManager" %>
    	<%@page import="java.sql.ResultSet" %>
    	<%@page import="java.io.IOException" %>
		<%@page import="java.sql.Statement"%>
<div class="modal fade" id="ShowTeachers" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="width:100%">
  <div class="modal-dialog" role="document" >
    <div class="modal-content" style="width:94rem;margin-left:-33rem">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">All Teachers</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       
    
        <table class="table table-bordered" >
  

  	<%
  		Class.forName("com.mysql.jdbc.Driver");
  		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3307/collegemanagment","root","rahulpatel");
  		String query = "select * from teacher";
  		Statement statement = connection.createStatement();
  		ResultSet resultset = statement.executeQuery(query);
  		//rsisx.absolute(1);
  		if(resultset.next())
  		{
  	%>
  			<thead >
    <tr>
   	
      <th scope="col">ID</th>
      <th scope="col">Name</th>
      <th scope="col">Degree</th>
      <th scope="col">Branch</th>
      <th scope="col">Password</th>
      <th scope="col">Email</th>
      <th scope="col">Phone Number</th>
     
      
    </tr>
  </thead>
  <tbody >
  			<%
  			
  			do
  			{
  				String id = resultset.getString("id");
  		  		String name = resultset.getString("name");
  		  		String degree = resultset.getString("degree");
  		  		String Branch = resultset.getString("branch");
  		  		String password = resultset.getString("password");
  		  		//String AdmissionDate = rsisx.getString("admissiondate");
  		  		String email = resultset.getString("email");
  		  		String Number  = resultset.getString("number");
  		  		//String img = rsisx.getString("photo");
  		  		
  		  		//System.out.println(img);
  			
  	%>
  	<form action="DeleteUpdateTeacher">
    <tr >
   
  	
   
      <td ><div class="form-group">
    <input type="text" class="form-control" name="id" value="<%=id%>" style="border:none;width:3rem;" readonly="readonly">
    </div></td>
      <td><div class="form-group">
    <input type="text" class="form-control" name="name" value="<%=name%>" style="border:none;width:8rem;">
    </div></td>
      <td><div class="form-group">
    <input type="text" class="form-control" name="degree" value="<%=degree%>" style="border:none;width:8rem;">
    </div></td>
      <td><div class="form-group">
    <input type="text" class="form-control" name="branch" value="<%=Branch%>" style="border:none;width:8rem;">
    </div></td>
      <td><div class="form-group">
    <input type="text" class="form-control" name="password" value="<%=password%>" style="border:none;width:8rem;">
    </div></td>
      
     <td><div class="form-group">
    <input type="text" class="form-control" name="email" value="<%=email%>" style="border:none;width:13rem;">
    </div></td>
     <td><div class="form-group">
    <input type="text" class="form-control" name="Number" value="<%=Number%>" style="border:none;width:8rem;">
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
  			}while(resultset.next());
  			connection.close();
  		}
  		else
  		{
  			out.println("don`t have any Teacher");
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