

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ContectUs
 */
@WebServlet("/ContectUs")
public class ContectUs extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String enumber = request.getParameter("enumber");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
		PrintWriter out = response.getWriter();
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/collegemanagment","root","rahulpatel");
			String qr = "insert into Studentmessage values(?,?,?,?)";
			PreparedStatement  st = con.prepareStatement(qr);
			st.setString(1, name);
			st.setString(2, email);
			st.setString(3, enumber);
			st.setString(4, message);
			
			st.executeUpdate();
			con.close();
			st.close();
			RequestDispatcher rs = request.getRequestDispatcher("index.jsp");
			rs.include(request, response);
			out.println("<script>window.alert('Message Sended Successfully');</script>");
		}
		catch(Exception e)
		{
			e.printStackTrace();
			RequestDispatcher rs = request.getRequestDispatcher("index.jsp");
			rs.include(request, response);
			out.println("<script>window.alert('Sorry Your Message Is Not Sended try again');</script>");
		}
	}

}
