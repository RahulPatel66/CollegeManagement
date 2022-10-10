<%@page import="javax.swing.text.DefaultEditorKit.InsertBreakAction"%>
<%@include file="components/files.jsp" %>
<%@include file="components/navbar.jsp" %>

<%@page import="java.io.IOException"%>
  <%@page import="java.sql.Connection"%>
  <%@page import="java.sql.DriverManager"%>
  <%@page import="java.sql.PreparedStatement"%>
  <%@page import="java.sql.ResultSet"%>
   <%@page import="java.sql.Statement"%>
 <%@page import="java.io.PrintWriter"%>
 
 <%
 if(email!=null&&name!=null)
	{
 
 %>
<!-- Issued Book Section Start From Here  -->
<div class="container" style="margin-top:5rem;">
<div class="card">
<div class="card-body">
<h3 class="text-danger">&#9733; Issued Books &#9733;</h3>
<table class="table br-dark table-striped  table-bordered" >
  
 <%
 		
		
 		try{
 			String enumber =(String) session.getAttribute("enumber");
 			String number = (String)session.getAttribute("number");
 			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/collegemanagment","root","rahulpatel");
			String qr = "select * from issuebook studentenumber=? and  studentnumber=?";
			PreparedStatement st = con.prepareStatement(qr);
			st.setString(1,enumber);
			st.setString(2,number);
			ResultSet rs = st.executeQuery();
			
			if(rs.next())
			{
				int count=1;
%>
			<thead>
   			 <tr>
  		    <th scope="col">S.No.</th>
  		    <th scope="col">Book Name</th>
  		    <th scope="col">Issued Date</th>
  		    <th scope="col">Book Writer</th>
   		   	<th scope="col">Book Number</th>
  			 </tr>
 			</thead>
 		 <tbody>
 
<%
				do
				{
					String booknumber = rs.getString("booknumber");
					String bookname = rs.getString("bookname");
					String issuedate = rs.getString("issuedate");
					String bookwriter = rs.getString("bookwriter");
					String studentenumber = rs.getString("studentenumber");
					String  studentnumber = rs.getString("studentnumber");
%>
  
    <tr>
      <th scope="row"><%=count %></th>
      <td><%=bookname %></td>
      <td><%=issuedate %></td>
      <td><%=bookwriter %></td>
      <td><%=booknumber %></td>
    </tr>
    <%
					
				}while(rs.next());
			}
			else
			{
				out.println("<p class='card-text text-danger'>You Are Not Issued Any Books </p>");
			}
			st.close();
			rs.close();
			con.close();
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


<!-- search Book Section Start From Here  -->

<div class="container " style="margin-top:4rem;">
	
	<div class="card m-auto" >
	<h2 class="card-title text-secondary m-2">&#9733; Search Available Book &#9733;</h2>
	<div class="card-body">
<form action="SearchBook" >
  <div class="row " >
    <div class="col">
     <select name="branch" class="form-control">
     	<option>Select Branch </option>
     	<option value="cse">CSE</option>
     	<option value="cse">CSE</option>
     	<option value="cse">CSE</option>
     	<option value="cse">CSE</option>
     	<option value="cse">CSE</option>
     </select>
    </div>
   
    <div class="col">
      <input type="submit"  class="form-control btn btn-primary" value="Search">
    </div>
  </div>
</form>
	</div>
	</div>
</div>

<!-- Search Book Section End From Here  -->



<!-- Available Book Section Start From Here  -->
<div class="container" style="margin-top:5rem;">
<div class="card">
<div class="card-body">
<h3 class="text-success">&#9733; Available Books &#9733;</h3>
<table class="table br-dark table-striped  table-bordered" >
  
   
 <%
 
 		String branch = request.getParameter("branch");
 		System.out.println(branch);
 		
 		try{
 			
 			Class.forName("com.mysql.jdbc.Driver");
			Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3307/collegemanagment","root","rahulpatel");
			ResultSet rs1=null ;
			if(branch!=null)
			{
				String qr1 = "select * from library where forbranch=?";
				PreparedStatement st1 = con1.prepareStatement(qr1);
				st1.setString(1,branch);
				 rs1 = st1.executeQuery();
			}
			else
			{
				String qr1 = "select * from library";
				Statement st1 = con1.createStatement();
				 rs1 = st1.executeQuery(qr1);
			}
			
			
			if(rs1.next())
			{
				int count1=1;
%>
		<thead>
 		   <tr>
      		<th scope="col">S.No.</th>
     		 <th scope="col">Book Name</th>
     		 <th scope="col">Total Books</th>
     		 <th scope="col">Book Writer</th>
 			 <th scope="col">For</th>
 			 <th scope="col">Details</th>
  		  	</tr>
 		 </thead>
 		 <tbody>
<%
	do
	{
		String bookname = rs1.getString("bookname");
		int quantity = rs1.getInt("quantity");
		String bookwrite = rs1.getString("bookwrite");
		String forbranch = rs1.getString("forbranch");
		String detail = rs1.getString("detail");
		

%>
    <tr>
      <th scope="row"><%=count1 %></th>
      <td><%=bookname %></td>
      <td><%=quantity %></td>
   		<td><%=bookwrite %></td>
   		<td><%=forbranch %></td>
   		<td><%=detail %></td>
    </tr>
   <%
					
				}while(rs1.next());
			}
			else
			{
				out.println("<p class='card-text text-danger'>Sorry! Your Books Information Is Not Avlaibel, Please Contact To Your College For More Information</p>");	
			}
			//st1.close();
			rs1.close();
			con1.close();
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

<!-- Available Book Section End From Here  -->