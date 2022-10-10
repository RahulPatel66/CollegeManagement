

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
 * Servlet implementation class AddTeacher
 */
@MultipartConfig
@WebServlet("/AddTeacher")
public class AddTeacher extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String name = request.getParameter("name");
		String degree =request.getParameter("degree");
		String branch = request.getParameter("branch");
		//String AdmissionDate = request.getParameter("AdmissionDate");
		String email =request.getParameter("email");
		String password = request.getParameter("password");
		String number = request.getParameter("number");
		String details = request.getParameter("about");
//		image upload in folder code 
		Part file = request.getPart("Image");
		String fileName = file.getSubmittedFileName();
		String uploadPath = "E:/java Project/CollegeManagment/src/main/webapp/TeacherProfile/"+fileName;
		System.out.println(branch);
                
		try
		{
			
			
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/collegemanagment","root","rahulpatel");
			String qr = "insert into teacher values(?,?,?,?,?,?,?,?,?)";
			PreparedStatement  st = con.prepareStatement(qr);
			st.setInt(1,0);
			st.setString(2, name);
			st.setString(3, degree);
			st.setString(4, branch);
			st.setString(5, password);
			//st.setString(6, AdmissionDate);
			st.setString(6, email);
			st.setString(7, number);
			st.setString(8,fileName);
			st.setString(9, details);
			st.executeUpdate();
			con.close();
			
			FileOutputStream fo = new FileOutputStream(uploadPath); 
			InputStream is = file.getInputStream();
			
			byte data[] = new byte[is.available()];
			is.read(data);
			fo.write(data);
			fo.close();
			
				HttpSession session = request.getSession();
				session.setAttribute("sucess", "Teacher Added Successfully");
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
