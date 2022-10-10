
<%@include file="components/navbar.jsp" %>
<%@include file="components/files.jsp" %>
<div class="container" style="margin-top:7rem;">

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
 			
 		try{
 			
 			
 			
 			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/collegemanagment","root","rahulpatel");
			String qr = "select * from notices";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(qr);
			if(rs.next())
			{
				do
				{
					String title = rs.getString("title");
					String filenames = rs.getString("filenames");
					String Message = rs.getString("message");
		%>
		<div class="alert alert-success" role="alert">
  		<h4 class="alert-heading"><%=title %> !</h4>
  		<p><%=Message %></p>
  		<hr>
  		<p class="mb-0">Download File to <a href="./Notice/<%=filenames%>" download>click Here</a></p>
		</div>
		
		<%
					
				}while(rs.next());
			}
			else
			{
			
		%>
				<div class="alert alert-success" role="alert">
		  		<h4 class="alert-heading">Don`t Have Any Notice</h4>
				</div>
		<%
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


</div>

<%
 		}
 		else
 		{
%>

<div class="alert alert-success" role="alert">
  <h4 class="alert-heading">Please Login!</h4>
  <p>You Are Not Logged In! please Login For Use The Application Features.</p>
  
</div>

<%
 		}
%>
