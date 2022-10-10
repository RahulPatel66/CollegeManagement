<%@include file="components/files.jsp" %>

<%@include file="components/navbar.jsp" %>


 <%
 if(email!=null&&name!=null)
	{

 %>

<iframe src="https://www.rgpv.ac.in/Uni/frm_ViewScheme.aspx" height="100%" width="100%"></iframe>    
   
   
   
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