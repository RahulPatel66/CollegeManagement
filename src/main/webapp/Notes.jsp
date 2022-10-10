<%@include file="components/files.jsp" %>
<%@include file="components/navbar.jsp" %>


 <%
 if(email!=null&&name!=null)
	{

 %>

<div class="container" style="margin-top:4rem;">
<iframe src="https://www.rgpvnotes.in/btech/grading-system-old/notes/" style="width:100%;height:100%"></iframe>
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