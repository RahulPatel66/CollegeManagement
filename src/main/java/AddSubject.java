

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.Connection;

/**
 * Servlet implementation class AddSubject
 */
@WebServlet("/AddSubject")
public class AddSubject extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			String subjectName = request.getParameter("name");
			String subjectCode = request.getParameter("subjectcode");
			String subjectDegree = request.getParameter("subjectDegree");
			String subjectBranch = request.getParameter("subjectBranch");
			String subjectTeacher = request.getParameter("subjectTeacher");
			String subjectsem = request.getParameter("subjectsem");
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/collegemanagment","root","rahulpatel");
			String qr = "insert into subject values(?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(qr);
			ps.setString(1, subjectCode);
			ps.setString(2, subjectName);
			ps.setString(3, subjectTeacher);
			ps.setString(4, subjectBranch);
			ps.setString(5, subjectDegree);
			ps.setString(6, subjectsem);
			
			ps.executeUpdate();
			HttpSession session = request.getSession();
			session.setAttribute("sucess", "Subject Added Succesfully");
			con.close();
			ps.close();
			response.sendRedirect("Admin.jsp");
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			HttpSession session = request.getSession();
			session.setAttribute("sucess", "Something is Wrong! please Try Again");
			response.sendRedirect("Admin.jsp");
		}
	}

}
