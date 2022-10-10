

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/UpdateDeleteStudent")
public class UpdateDeleteStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String btn = request.getParameter("btn");
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String degree = request.getParameter("degree");
		String branch = request.getParameter("branch");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String Number = request.getParameter("Number");
	
		if(btn.equals("Update"))
		{
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/collegemanagment","root","rahulpatel");
				String qr = "Update student set name=?,degree=?,branch=?,password=?,email=?,phonenumber=? where id =?";
				PreparedStatement st = con.prepareStatement(qr);
				st.setString(1, name);
				st.setString(2, degree);
				st.setString(3, branch);
				st.setString(4, password);
				st.setString(5, email);
				st.setString(6, Number);
				st.setString(7, id);
				st.executeUpdate();
				
				response.sendRedirect("Admin.jsp");
				HttpSession sessiong = request.getSession();
				sessiong.setAttribute("sucess", "Update Data Succesfully");
				con.close();
			}
			catch(Exception e)
			{
				
				System.out.println("exception");
				HttpSession sessiong = request.getSession();
				sessiong.setAttribute("sucess", "Something is Wrong Please Try Again");
			}
		}
		else 
		{
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/collegemanagment","root","rahulpatel");
				String qr = "delete from student where id =?";
				PreparedStatement st = con.prepareStatement(qr);
				st.setString(1, id);
				
				st.executeUpdate();
				
				response.sendRedirect("Admin.jsp");
				con.close();
				HttpSession sessiong = request.getSession();
				sessiong.setAttribute("sucess", "Delete Student Succesfully");
			}
			catch(Exception e)
			{
				
				System.out.println("exception");
				HttpSession sessiong = request.getSession();
				sessiong.setAttribute("sucess", "Something is Wrong Please Try Again");
				
			}
		}
	}

	}

