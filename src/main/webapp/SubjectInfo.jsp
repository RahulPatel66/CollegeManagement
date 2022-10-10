
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
<div class="container " style="margin-top:5rem;">
<div class="card m-auto bg-light" style="width: 18rem;">
  <img class="card-img-top m-auto" src="StudentProfile/<%=photo %>" alt="Card image cap" style="width:7rem;height:9rem;border-radius: 50%;">
  <div class="card-body m-auto text-secondary">
    <h5 class="card-title text-info"><%=name %></h5>
    <p class="card-text m-auto">Degree :- <%=degree %></p>
    <p class="card-text m-auto"> Branch :- <%=branch %></p>
    <p class="card-text m-auto"> Semester :- <%=semester %></p>
    
  </div>
</div>

</div>
<div class="container " style="margin-top:3rem;">

<div class="card bg-light">

<div class="card-body">
<h3 class="text-info">&#9733; Your Subject &#9733;</h3>
<table class="table br-dark table-striped table-dark table-bordered" >
<%
 		try{
 			String branch =(String) session.getAttribute("brach");
 			String semester = (String)session.getAttribute("semester");
 			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/collegemanagment","root","rahulpatel");
			String qr = "select * from subject forbranch=? and semester=?";
			PreparedStatement st = con.prepareStatement(qr);
			st.setString(1,branch);
			st.setString(2,semester);
			ResultSet rs = st.executeQuery();
			
			if(rs.next())
			{
				int count=1;
%>
  <thead>
    <tr>
      <th scope="col">S.No.</th>
      <th scope="col">Subject Code</th>
      <th scope="col">Subject Name</th>
      <th scope="col">Subject Teacher</th>
      
    </tr>
  </thead>
  <tbody>
   
 

<%
				do
				{
					String subjectcode = rs.getString("subjectcode");
					String subjectname = rs.getString("subjectname");
					String subjectTeacher = rs.getString("subjectTeacher");
					String timetable = rs.getString("timetable");
					
%>
    <tr>
      <th scope="row"><%=count %></th>
      <td><%=subjectcode %></td>
      <td><%=subjectname %></td>
      <td><%=subjectTeacher %></td>
     
    </tr>
    
        <%
					
				}while(rs.next());
				
%>
<p>Download College Time Table <a class="text-primary" style="cursor:pointer;text-decoration:underline;">Click Here</a></p>
<%
			}
			
	
			else
			{
				out.println("<p class='card-text text-danger'>Sorry! Your Subject Information Is Not Avlaibel, Please Contact To Your College For More Information</p>");			
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
