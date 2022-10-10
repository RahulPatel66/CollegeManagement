<%@include file="components/files.jsp" %>
<%@page import="com.mysql.jdbc.Driver"%>
<%@include file="components/navbar.jsp" %>


 <%
 if(email!=null&&name!=null)
	{

 %>
<!-- Issued Book Section Start From Here  -->
<%@page import="java.io.IOException"%>
  <%@page import="java.sql.Connection"%>
  <%@page import="java.sql.DriverManager"%>
  <%@page import="java.sql.PreparedStatement"%>
  <%@page import="java.sql.ResultSet"%>
   <%@page import="java.sql.Statement"%>
 <%@page import="java.io.PrintWriter"%>
 
 

 
 

<div class="container" style="margin-top:5rem;">
<div class="card">
<div class="card-body">
<h3 class="card-title text-secondary">&#9733; Your College Fees Information &#9733;</h3>
<table class="table  table-striped table-dark table-bordered" >
 <%
 		try
		 { 
 			Class.forName("com.mysql.jdbc.Driver");
 			Connection conection = DriverManager.getConnection("jdbc:mysql://localhost:3307/collegemanagment","root","rahulpatel");
 			String query = "select * from account where degree=? and  branch=?";
 			PreparedStatement preparedst = conection.prepareStatement(query);
 			preparedst.setString(1, degree);
 			preparedst.setString(2, branch);
 			ResultSet resultSet = preparedst.executeQuery();
 			if(resultSet.next())
 			{
%>

 
  <thead>

    <tr>
      <th scope="col">S.No.</th>
      <th scope="col">Year</th>
      <th scope="col">Fees</th>
      <th scope="col">Degree</th>
      <th scope="col">Branch</th>
    </tr>
  </thead>
  <tbody>
  <%!int totalamount=0; %>
  <%			
  				int count=0;
  				
 			
 				do{
 					count++;
 					String year = resultSet.getString("year");
 					String Fees = resultSet.getString("fees");
 					String degree = resultSet.getString("degree");
 					String branch = resultSet.getString("branch");
 					totalamount+= Integer.parseInt(Fees);
 %>
    <tr>
      <th scope="row"><%=count %></th>
      <td><%=year %> Year</td>
      <td>&#8377; <%=Fees %></td>
      <td><%=degree %></td>
     <td><%=branch %></td>
    </tr>
 <%	
 			}while(resultSet.next());
 %>
 			<tr>
      <th scope="row">Total Fees</th>
      <th colspan="7" >&#8377;  <%=totalamount %></th>
    </tr>
 <%
 			}
 			else 
 			{
 				out.println("Sorry! Your College Fees Information Not Avlaible please Contact Your College For More Information ");
 			}
 			conection.close();
 			preparedst.close();
 			resultSet.close();
		 }
 		 catch(Exception e)
 		{
 			 e.printStackTrace();
 		}
 
 %>
     
  </tbody>
</table>

</div>
	
</div>
</div>
<!-- Issued Book Section End From Here  -->
<div class="container" style="margin-top:3rem;">
<div class="card">
<div class="card-body">
<h3 class="card-title text-secondary">&#9733; Your Filed College Fees InfoInformation &#9733;</h3>
<table class="table br-dark table-striped table-dark table-bordered" >
<%
 		try
		 { 
 			Class.forName("com.mysql.jdbc.Driver");
 			Connection conection = DriverManager.getConnection("jdbc:mysql://localhost:3307/collegemanagment","root","rahulpatel");
 			String query = "select * from studentaccount where enumber=? and  number=?";
 			PreparedStatement preparedst = conection.prepareStatement(query);
 			preparedst.setString(1, enumber);
 			preparedst.setString(2, mobilenummber);
 			ResultSet resultSet = preparedst.executeQuery();
 			if(resultSet.next())
 			{
%>

  <thead>
    <tr>
      <th scope="col">S.No.</th>
      <th scope="col">Year</th>
      <th scope="col">Fees</th>
      <th scope="col">Fees Filled Date</th>
      <th scope="col">Degree</th>
      <th scope="col">Branch</th>
	
      
    </tr>
  </thead>
  <tbody>
   <%!int totalfillamount=0; %>
  <%			
  				int countnumber=0;
  				
 			
 				do{
 					countnumber++;
 					String year = resultSet.getString("year");
 					String Fees = resultSet.getString("fees");
 					String degree = resultSet.getString("degree");
 					String branch = resultSet.getString("branch");
 					totalfillamount+= Integer.parseInt(Fees);
 %>
    <tr>
      <th scope="row"><%=countnumber %></th>
      <td><%=year %></td>
      <td>&#8377; <%=Fees %></td>
      <td><%=degree %></td>
      <td><%=branch %></td>
     
    </tr>
    <%	
 			}while(resultSet.next());
 	%>
 	<tr>
      <th scope="row">Total Fees</th>
      <td colspan="3" >&#8377; <%=totalfillamount %></td>
      
    </tr>
 	<%
 			}
 			else 
 			{
 				out.println("<p class='text-danger card-text'>Sorry! Your College Filled Fees Information Not Avlaible please Contact Your College For More Information</p>");
 			}
 			conection.close();
 			preparedst.close();
 			resultSet.close();
		 }
 		 catch(Exception e)
 		{
 			 e.printStackTrace();
 		}
 
 %>
    
  </tbody>
</table>

</div>
	
</div>
</div>


<%
 		}
 		else
 		{
%>
<div class="container" style="margin-top:5rem;">



<div class="alert alert-success" role="alert">
  <h4 class="alert-heading">Please Login!</h4>
  <p>You Are Not Logged In! please Login For Use The Application Features.</p>
  
</div>
</div>
<%
 		}
%>