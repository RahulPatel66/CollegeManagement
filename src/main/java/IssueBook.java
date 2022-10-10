

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

import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class IssueBook
 */
@WebServlet("/IssueBook")
public class IssueBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String booknumber = request.getParameter("booknumber");
			String bookname = request.getParameter("name");
			String issuedate = request.getParameter("date");
			String bookwriter = request.getParameter("writer");
			String studentenumber = request.getParameter("enumber");
			String studentnumber = request.getParameter("number");
			
			//System.out.print(booknumber+" "+bookname+" "+issuedate+" "+bookwriter+" "+studentenumber+" "+studentnumber);
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/collegemanagment","root","rahulpatel");
				String qr = "insert into issuebook values(?,?,?,?,?,?)";
				PreparedStatement ps = con.prepareStatement(qr);
				ps.setString(1, booknumber);
				ps.setString(2, bookname);
				ps.setString(3, issuedate);
				ps.setString(4, bookwriter);
				ps.setString(5, studentenumber);
				ps.setString(6, studentnumber);
				
				ps.executeUpdate();
				con.close();
				ps.close();
				
				
				HttpSession session = request.getSession();
				session.setAttribute("sucess", "Book Succesfuly Added");
				response.sendRedirect("Admin.jsp");
				
			}
			catch(Exception e)
			{

				HttpSession session = request.getSession();
				session.setAttribute("sucess", "Somthing Is Wrong Please Try Again.");
				response.sendRedirect("Admin.jsp");
				e.printStackTrace();
			}
	}

}
