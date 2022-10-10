<%@page import="javax.print.attribute.standard.Media"%>
<%@include file="components/navbar.jsp" %>
<%@include file="components/files.jsp" %>

	<%@page import="java.sql.Connection" %>
    	<%@page import="java.sql.DriverManager" %>
    	<%@page import="java.sql.ResultSet" %>
    	<%@page import="java.io.IOException" %>
		<%@page import="java.sql.Statement"%>
		
		
 <style>
 		
        .row .card:hover{
           background-color:#e2e2e2;
           cursor:pointer;
        }
		#btn{
		font-weight:bold;
		}        
         #btn:hover
        {
        	
        	background-color:green;
        }
 </style>
<div class="container " style="margin-top:5rem;">


	<div class="row" style="border-radius: 1rem; align-items: center;justify-content: center; ">
	<%
		try{
			Class.forName("com.mysql.jdbc.Driver");
	  		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3307/collegemanagment","root","rahulpatel");
	  		String query = "select * from studentmessage";
	  		Statement statement = connection.createStatement();
	  		ResultSet resultset = statement.executeQuery(query);
	  		//rsisx.absolute(1);
	  		if(resultset.next())
	  		{
	  			do
	  			{
	  				String name = resultset.getString("name");
	  		  		String email = resultset.getString("email");
	  		  		String enrollment = resultset.getString("enrollment");
	  		  		String message = resultset.getString("message");
	  		  
	%>
	
		<div class="col-sm-3 card mr-2" style="align-items: center;border: 1px solid black; text-align: center;width:18rem;margin-top:1rem">
              
                <div class="card-body " style="margin-top: -1.5rem;">
                    <span class="card-title" style="font-size: 1.5rem;">Name :- <%=name %> </span>
                    <p class="card-text" style="font-weight: lighter;">Email :- <%=email %></p>
                    <p class="card-text" style="font-weight: lighter;">Enrollment Number :- <%=enumber %></p>
                    <p class="card-text" style="font-weight: lighter;">Message :- <%= message %></p>
                </div>
            </div>
           
 <%
           
   		
	  			}while(resultset.next());
	  			connection.close();
	  			resultset.close();
	  			statement.close();
	  		}
	  		else
	  		{
	  			%>

	  			<div class="alert alert-success" role="alert">
	  			  <h4 class="alert-heading">Don`t Have Any Message!</h4>
	  			</div>

	  			<%
	  		}
	  		
		}catch(Exception e)
		{
			e.printStackTrace();
			out.println("Somthing is Wrong Try Again After Somethime");
		}
	
           
 %>
         
           
</div>

</div>