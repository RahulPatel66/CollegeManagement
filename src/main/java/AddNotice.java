

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
 * Servlet implementation class AddNotice
 */
@MultipartConfig
@WebServlet("/AddNotice")
public class AddNotice extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String name = request.getParameter("name");
		String message = request.getParameter("Message");
		
//		image upload in folder code 
		Part file = request.getPart("Image");
		String fileName = file.getSubmittedFileName();
		String uploadPath = "E:/java Project/CollegeManagment/src/main/webapp/Notice/"+fileName;
		try
		{
			
			
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/collegemanagment","root","rahulpatel");
			String qr = "insert into notices values(?,?,?,?)";
			PreparedStatement  st = con.prepareStatement(qr);
			st.setInt(1, 1);
			st.setString(2,name);
			st.setString(3, fileName);
			st.setString(4, message);
		
			st.executeUpdate();
			con.close();
			
			FileOutputStream fo = new FileOutputStream(uploadPath); 
			InputStream is = file.getInputStream();
			
			byte data[] = new byte[is.available()];
			is.read(data);
			fo.write(data);
			fo.close();
			
				HttpSession session = request.getSession();
				session.setAttribute("sucess", "Notice Added Successfully");
				response.sendRedirect("Admin.jsp");

		}
		catch(Exception e)
		{
			HttpSession session = request.getSession();
			session.setAttribute("sucess", "Somthin is Wring! Notice is not Added! please Try Again");
			response.sendRedirect("Admin.jsp");
			e.printStackTrace();
		}
	}

}
