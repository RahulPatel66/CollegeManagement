

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class StudentLogin
 */
@WebServlet("/StudentLogin")
public class StudentLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text//html");
		
		String id = request.getParameter("enumber");
		String password = request.getParameter("password");
		
		
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/collegemanagment","root","rahulpatel");
			String qr = "select * from student where id=?";
			PreparedStatement st = con.prepareStatement(qr);
			st.setString(1, id);
			ResultSet rs = st.executeQuery();
			rs.relative(1);
			String id1 = rs.getString("id");
			String name=rs.getString("name");
			String email = rs.getString("email");
			String number = rs.getString("phonenumber");
			String photo = rs.getString("photo");
			String degree = rs.getString("degree");
			String branch = rs.getString("branch");
			String password1 = rs.getString("password");
			String semester = rs.getString("semester");
		
			if(id.equalsIgnoreCase(id1)&& password.equals(password1))
			{
				HttpSession session = request.getSession();
				session.setAttribute("name",name);
				session.setAttribute("enumber", id);
				session.setAttribute("name", name);
				session.setAttribute("email", email);
				session.setAttribute("number", number);
				session.setAttribute("photo", photo);
				session.setAttribute("sem", semester);
				session.setAttribute("degree", degree);
				session.setAttribute("branch", branch);
				
				response.sendRedirect("index.jsp");
			}
			else
			{
				HttpSession session = request.getSession();
				session.setAttribute("message", "Password is Wrong! Please Try Again");
				response.sendRedirect("StudentSignIn.jsp");
			}
			
			con.close();
		}
		catch(java.sql.SQLException e)
		{

			HttpSession session = request.getSession();
			session.setAttribute("message", "Enrollment is Wrong! Please Try Again");
			response.sendRedirect("StudentSignIn.jsp");
		}
		catch(Exception e)
		{
			HttpSession session = request.getSession();
			session.setAttribute("message", "Somthing is Wrong! Please Try Again After Some Time");
			response.sendRedirect("StudentSignIn.jsp");
		}
	}

}
