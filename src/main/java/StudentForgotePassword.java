

import java.io.IOException;

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
 * Servlet implementation class StudentForgotePassword
 */
@WebServlet("/StudentForgotePassword")
public class StudentForgotePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String name = request.getParameter("name");
		String id = request.getParameter("enumber");
		String number = request.getParameter("number");
		String password = request.getParameter("password");
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/collegemanagment","root","rahulpatel");
			String qr = "select*from user Where email=? and number=?";
			
			PreparedStatement  st = con.prepareStatement(qr);
			st.setString(1, id);
			st.setString(2, number);
			
			ResultSet rs = st.executeQuery();
			rs.relative(1);
			String name1 = rs.getString("name");
			String email1= rs.getString("email");
			String number1 = rs.getString("number");
			if(name.equals(name1)&&id.equalsIgnoreCase(email1)&&number.equals(number1))
			{
				String qr1 = "UPDATE student SET password = ? WHERE id = ?";
				PreparedStatement st1 = con.prepareStatement(qr1);
				st1.setString(1, password);
				st1.setString(2, id);
				st1.executeUpdate();
				HttpSession session = request.getSession();
				session.setAttribute("message", "Succesfully Password Forgoted");
				response.sendRedirect("StudentSignIn.jsp");
			}
			else
			{
				HttpSession session = request.getSession();
				session.setAttribute("message", "Your Account is not Exixt! Please Try Again");
				response.sendRedirect("ForgotePassword.jsp");
			}
			con.close();
			
		}
		catch(java.sql.SQLException e)
		{

			HttpSession session = request.getSession();
			session.setAttribute("message", "Details is not Matched! Please Try Again");
			response.sendRedirect("ForgotePassword.jsp");
		}
		catch(Exception e)
		{
			e.printStackTrace();
			HttpSession session = request.getSession();
			session.setAttribute("message", "Somthing! is Wrong Please Try Again");
			response.sendRedirect("ForgotePassword.jsp");
			
		}
	}

}
