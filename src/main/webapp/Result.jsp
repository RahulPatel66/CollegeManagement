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
<div class="container"  style="margin-top:5rem;">
	<div class="card m-auto" style="width:20rem;">
	  <img class="card-img-top m-auto" src="StudentProfile/<%=photo %>" alt="Card image cap" style="width:7rem;height:9rem;border-radius: 50%;">
	<div class="card-body m-auto">
	<h4 class="card-title text-info">Name :- <%=name %></h4>
	<p class="card-text text-secondary">Enrollment No. :- <%=enumber %></p>
	</div>
	
	</div>
	
</div>
<div class="container" style="margin-top:5rem;">
<div class="card">
<div class="card-body">
<h3 class="text-info">&#9733; Your Results &#9733;</h3>
<table class="table br-dark table-striped table-dark table-bordered" >

 <%
 		
		
 		try{
 			String enumber =(String) session.getAttribute("enumber");
 			String number = (String)session.getAttribute("number");
 			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/collegemanagment","root","rahulpatel");
			String qr = "select * from result enumber=?";
			PreparedStatement st = con.prepareStatement(qr);
			st.setString(1,enumber);
			
			ResultSet rs = st.executeQuery();
			
			if(rs.next())
			{
				int count=1;
%>
  <thead>
  
    <tr>
      <th scope="col">S.No.</th>
      <th scope="col">Session</th>
      <th scope="col">Semester</th>
       <th SCOPE="COL">SGPA</th>
        <th SCOPE="COL">CGPA</th>
        <th scope="col">Result</th>
        <th scope="col">View MarkSheet</th>
      
    </tr>
  </thead>
  <tbody>
  <%
  				int countn=0;
				do
				{
					countn++;
					String  sessionYear = rs.getString("sessionYear");
					String semester = rs.getString("semester");
					String sgpa = rs.getString("sgpa");
					String cgpa = rs.getString("cgpa");
					String status = rs.getString("status");
					String  file = rs.getString("file");
%>
    <tr>
      <th scope="row"><%=countn %></th>
      <td><%=sessionYear %></td>
      <td><%=sgpa %></td>
      <td><%=cgpa %></td>
      <td><%=status %></td>
      <td><%=file %></td>
     
    </tr>
     <%
					
				}while(rs.next());
			}
			else
			{
				out.println("<p class='card-text text-danger'>Sorry! Your Result is Not Avlaibel Please Contact To Your College  More Information</p>");
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
<!-- Issued Book Section End From Here  -->
