 
<link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
    	<%@page import="java.sql.Connection" %>
    	<%@page import="java.sql.DriverManager" %>
    	<%@page import="java.sql.ResultSet" %>
    	<%@page import="java.io.IOException" %>
		<%@page import="java.sql.Statement"%>
 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./css/style.css">
<%@include file="components/files.jsp" %>

  	<%
  		try
  		{
  		Class.forName("com.mysql.jdbc.Driver");
  		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3307/collegemanagment","root","rahulpatel");
  		String query = "select * from teacher";
  		Statement statement = connection.createStatement();
  		ResultSet resultset = statement.executeQuery(query);
  		//rsisx.absolute(1);
  		if(resultset.next())
  		{
  	%>
<section class="reviews" id="reviews">
 
        <h1 class="heading"> Our <span>Faculties</span> </h1>
		<h3 style="text-decoration:underline;color:green;">For BTech :-</h3>
        <div class="swiper review-slider">

            <div class="swiper-wrapper">
	<%
  			
  			do
  			{
  				String image = resultset.getString("image");
  		  		String name = resultset.getString("name");
  		  		String degree = resultset.getString("degree");
  		  		String Branch = resultset.getString("branch");
  		  		String password = resultset.getString("password");
  		  		//String AdmissionDate = rsisx.getString("admissiondate");
  		  		String email = resultset.getString("email");
  		  		String Number  = resultset.getString("number");
  		  		//String img = rsisx.getString("photo");
  		  		String about = resultset.getString("about");
  		  		//System.out.println(img);
  			
  	%>
                
                <div class="card swiper-slide box" >
                    <img class="card-img-top m-auto" src="./TeacherProfile/<%=image %>" alt="image">
                    
                    <div class="content card-body">
                        <h4 class="card-title">Name :- Prof. <%=name %></h4>
                        <p class="card-text">Degree :- <%=degree %></p>
                        <p class="card-text">Email :- <%=email %></p>
                        <p class="card-text" style="font-size:1.2rem;">About :- <%=about %></p>
                      
                    </div>
                </div>
                <%
  			}while(resultset.next());
  			connection.close();
  		}
  		else
  		{
  			out.println("don`t have any Teacher");
  		}
  		}catch(Exception e)
  		{
  			e.printStackTrace();
  		}
   %>
               
				
                

            </div>

            

        </div>
    </section>

<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
 <script src="./js/index.js"></script>

</script>

