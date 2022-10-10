<%@include file="components/files.jsp"%>
<%@include file="components/navbar.jsp"%>

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
<body style="background-color:aqua;">
<div class="container " style="margin-top:5rem;">

   
<%
	String s = (String)session.getAttribute("sucess");
	//out.print(s);
	if(s!=null)
	{
%>
<div class="alert alert-warning alert-dismissible">
  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong><%=s %></strong>
</div>
<%
	session.removeAttribute("sucess");
	}
%>


<!-- First row start from here  -->

<%
		int studentcount=0;
		int teachercount=0;
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection mycon = DriverManager.getConnection("jdbc:mysql://localhost:3307/collegemanagment","root","rahulpatel");
			String myQuery = "select id from Student";
			
			Statement myst = mycon.createStatement();
			
			ResultSet myrs = myst.executeQuery(myQuery);
			
			if(myrs.next())
			{
				do
				{
					studentcount++;
					
				}while(myrs.next());
			}
			
			String myQuery1 = "select id from teacher";
			Statement myst1 = mycon.createStatement();
			ResultSet myrs1 = myst1.executeQuery(myQuery1);
			if(myrs1.next())
			{
				do
				{
					teachercount++;
					
				}while(myrs1.next());
			}
			
				
		}catch(Exception e)
		{
			e.printStackTrace();
		}

%>
<div class="row" style="border-radius: 1rem; align-items: center;justify-content: center; ">


		<div class="col-sm-3 card mr-2 " style="align-items: center;border: 1px solid black; text-align: center;width:18rem;">
                <img class="card-img-top my-3" src="./images/man.png" alt="Card image cap" style="width: 30%; height:50%; border-radius: 50;">
                <div class="card-body " style="margin-top: -1.5rem;">
                    <span class="card-title" style="font-size: 2rem;"><%=studentcount %></span>
                    <div class="card-title" style="font-size: 1.5rem;font-weight: lighter;">Students</div>
                </div>
            </div>
			<div class="col-sm-3 card mr-2 " style="align-items: center;border: 1px solid black; text-align: center;width:18rem;">
                <img class="card-img-top my-3" src="./images/teacher.png" alt="Card image cap" style="width: 30%; height:50%; border-radius: 50;">
                <div class="card-body " style="margin-top: -1.5rem;">
                    <span class="card-title" style="font-size: 2rem;"><%=teachercount %></span>
                    <div class="card-title" style="font-size: 1.5rem;font-weight: lighter;">Teachers</div>
                </div>
            </div>
			<div class="col-sm-3 card mr-2 " style="align-items: center;border: 1px solid black; text-align: center;width:18rem;">
                <img class="card-img-top my-3" src="./images/man.png" alt="Card image cap" style="width: 30%; height:50%; border-radius: 50;">
                <div class="card-body " style="margin-top: -1.5rem;">
                    <span class="card-title" style="font-size: 2rem;">3</span>
                    <div class="card-title" style="font-size: 1.5rem;font-weight: lighter;">Students</div>
                </div>
            </div>
</div>

<!-- First row end from here  -->


<!-- second row start from here  -->



<div class="row mt-2" style="border-radius: 1rem; align-items: center;justify-content: center; ">


		<div class="col-sm-3 card mr-2" data-toggle="modal" data-target="#AddStudent" style="align-items: center;border: 1px solid black; text-align: center;width:18rem;">
                <img class="card-img-top my-3" src="./images/addstudent.png" alt="Card image cap" style="width: 30%; height:50%; border-radius: 50;">
                <div class="card-body " style="margin-top: -1.5rem;">
                    <span class="card-title" style="font-size: 2rem;">Add Students</span>
                    <p class="card-text" style="font-weight: lighter;">click Here To Add Student</p>
                </div>
            </div>
            
            <!-- Add Student Model File -->
            <%@include file="components/AddStudent.jsp" %>
             <!-- Add Student Model File -->
             
             
			<div class="col-sm-3 card mr-2 " data-toggle="modal" data-target="#showStudents" style="align-items: center;border: 1px solid black; text-align: center;width:18rem;">
                <img class="card-img-top my-3" src="./images/tv-show.png" alt="Card image cap" style="width: 30%; height:50%; border-radius: 50;">
                <div class="card-body " style="margin-top: -1.5rem;">
                    <span class="card-title" style="font-size: 2rem;">Show Students</span>
                    <p class="card-text" style="font-weight: lighter;">click Here To Show Student</p>
                </div>
            </div>
            
             <!-- Add Student Model File -->
            <%@include file="components/ShowStudent.jsp" %>
             <!-- Add Student Model File -->
             
             
            
            <div class="col-sm-3 card mr-2 " data-toggle="modal" data-target="#AddTeacher" style="align-items: center;border: 1px solid black; text-align: center;width:18rem;">
                <img class="card-img-top my-3" src="./images/add-button.png" alt="Card image cap" style="width: 30%; height:50%; border-radius: 50;">
                <div class="card-body " style="margin-top: -1.5rem;">
                    <span class="card-title" style="font-size: 2rem;">Add Teachers</span>
                    <p class="card-text" style="font-weight: lighter;">click Here To Add Teacher</p>
                </div>
            </div>
            
            <!-- Add Student Model File -->
            <%@include file="components/AddTeacher.jsp" %>
             <!-- Add Student Model File -->
             
</div>

<!-- second row end from here  -->



<!-- third row start from here  -->



<div class="row mt-2" style="border-radius: 1rem; align-items: center;justify-content: center; ">


		<div class="col-sm-3 card mr-2" data-toggle="modal" data-target="#ShowTeachers" style="align-items: center;border: 1px solid black; text-align: center;width:18rem;">
                <img class="card-img-top my-3" src="./images/show-teacher.png" alt="Card image cap" style="width: 30%; height:50%; border-radius: 50;">
                <div class="card-body " style="margin-top: -1.5rem;">
                    <span class="card-title" style="font-size: 2rem;">Show Teachers</span>
                    <p class="card-text" style="font-weight: lighter;">click Here To show Teachers</p>
                </div>
            </div>
            
            <!-- Show Teacher Model File -->
              <%@include file="components/ShowTeachers.jsp" %>
             <!-- Show Teacher Model File -->
             
             <div class="col-sm-3 card mr-2" data-toggle="modal" data-target="#AddNotice" style="align-items: center;border: 1px solid black; text-align: center;width:18rem;">
                <img class="card-img-top my-3" src="./images/notice.png" alt="Card image cap" style="width: 30%; height:50%; border-radius: 50;">
                <div class="card-body " style="margin-top: -1.5rem;">
                    <span class="card-title" style="font-size: 2rem;">Add Notice</span>
                    <p class="card-text" style="font-weight: lighter;">click Here To Add Notice</p>
                </div>
            </div>
            
            <!-- Show Teacher Model File -->
            <%@include file="components/AddNotice.jsp" %>
             <!-- Show Teacher Model File -->
             
		<div class="col-sm-3 card mr-2" data-toggle="modal" data-target="#AddBook" style="align-items: center;border: 1px solid black; text-align: center;width:18rem;">
                <img class="card-img-top my-3" src="./images/issueBook.png" alt="Card image cap" style="width: 30%; height:50%; border-radius: 50;">
                <div class="card-body " style="margin-top: -1.5rem;">
                    <span class="card-title" style="font-size: 2rem;">Issue Book</span>
                    <p class="card-text" style="font-weight: lighter;">click Here To Issue Book</p>
                </div>
            </div>
            
            <!-- Show Teacher Model File -->
            <%@include file="components/IssueBook.jsp" %>
             <!-- Show Teacher Model File -->
             
		
             
</div>

<!-- third row end from here  -->


<!-- Fourth Row Start From Here  -->


<div class="row mt-2" style="border-radius: 1rem; align-items: center;justify-content: center; ">


		<div class="col-sm-3 card mr-2" data-toggle="modal" data-target="#AddSubject" style="align-items: center;border: 1px solid black; text-align: center;width:18rem;">
                <img class="card-img-top my-3" src="./images/addsubject.png" alt="Card image cap" style="width: 30%; height:50%; border-radius: 50;">
                <div class="card-body " style="margin-top: -1.5rem;">
                    <span class="card-title" style="font-size: 2rem;">Add Subject</span>
                    <p class="card-text" style="font-weight: lighter;">click Here To Add Subject</p>
                </div>
            </div>
            
            <!-- ADD Subject Model File -->
              <%@include file="components/AddSubject.jsp" %>
             <!--  ADD Subject Model File -->
             
             
            	<div class="col-sm-3 card mr-2" data-toggle="modal" data-target="#AddResult" style="align-items: center;border: 1px solid black; text-align: center;width:18rem;">
                <img class="card-img-top my-3" src="./images/addresult.png" alt="Card image cap" style="width: 30%; height:50%; border-radius: 50;">
                <div class="card-body " style="margin-top: -1.5rem;">
                    <span class="card-title" style="font-size: 2rem;">Add Result</span>
                    <p class="card-text" style="font-weight: lighter;">click Here To Add Result</p>
                </div>
            </div>
            
            <!--  ADD Result Model File -->
              <%@include file="components/AddResult.jsp" %>
             <!-- ADD Result Model File -->
            
            
		<div class="col-sm-3 card mr-2" data-toggle="modal" data-target="#AddFees" style="align-items: center;border: 1px solid black; text-align: center;width:18rem;">
                <img class="card-img-top my-3" src="./images/money.png" alt="Card image cap" style="width: 30%; height:50%; border-radius: 50;">
                <div class="card-body " style="margin-top: -1.5rem;">
                    <span class="card-title" style="font-size: 2rem;">Add Fees</span>
                    <p class="card-text" style="font-weight: lighter;">click Here To Add Fees</p>
                </div>
            </div>
            
            <!--  ADD Fees Model File -->
              <%@include file="components/AddFees.jsp" %>
             <!-- ADD Fees Model File -->
             
</div>

<!-- Fourth Row End Here  -->



</div>

</body>