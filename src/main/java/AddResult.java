

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 * Servlet implementation class AddResult
 */
@MultipartConfig
@WebServlet("/AddResult")
public class AddResult extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String StudentEnrollment = request.getParameter("StudentEnrollment");
		String ResultDegree = request.getParameter("ResultDegree");
		String ResultBranch =request.getParameter("ResultBranch");
		String subjectsem = request.getParameter("subjectsem");
		String sessionYear = request.getParameter("session");
		String CGPA =request.getParameter("CGPA");
		String SGPA = request.getParameter("SGPA");
		String Status = request.getParameter("Status");
		
		
//		image upload in folder code 
		Part file = request.getPart("Resultfile");
		String fileName = file.getSubmittedFileName();
		String uploadPath = "E:/java Project/CollegeManagment/src/main/webapp/StudentResult/"+fileName;
                
		try
		{
			
			
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/collegemanagment","root","rahulpatel");
			String qr = "insert into result values(?,?,?,?,?,?,?,?,?)";
			PreparedStatement  st = con.prepareStatement(qr);
			st.setString(1,StudentEnrollment);
			st.setString(2, subjectsem);
			st.setString(3, ResultDegree);
			st.setString(4, ResultBranch);
			st.setString(5, fileName);
			st.setString(6, CGPA);
			st.setString(7, SGPA);
			st.setString(8,sessionYear);
			st.setString(9,Status);
			st.executeUpdate();
			con.close();
			
			FileOutputStream fo = new FileOutputStream(uploadPath); 
			InputStream is = file.getInputStream();
			
			byte data[] = new byte[is.available()];
			is.read(data);
			fo.write(data);
			fo.close();
			
				HttpSession session = request.getSession();
				session.setAttribute("sucess", "Result Added Successfully");
				response.sendRedirect("Admin.jsp");
				

		}
		catch(Exception e)
		{
			HttpSession session = request.getSession();
			session.setAttribute("sucess", "Somthin is Wring! Student is not Added! please Try Again");
			response.sendRedirect("Admin.jsp");
			e.printStackTrace();
		}
	}

}
