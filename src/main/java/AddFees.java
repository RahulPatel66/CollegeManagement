

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
 * Servlet implementation class AddFees
 */
@MultipartConfig
@WebServlet("/AddFees")
public class AddFees extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String StudentEnrollment = request.getParameter("StudentEnrollment");
		String FeesDegree = request.getParameter("FeesDegree");
		String FeesBranch =request.getParameter("FeesBranch");
		String currentYear = request.getParameter("currentYear");
		String Fees = request.getParameter("Fees");
		String fileddate =request.getParameter("fileddate");
		String MobileNumber = request.getParameter("MobileNumber");
		
		
//		image upload in folder code 
		Part file = request.getPart("FeesSlip");
		String fileName = file.getSubmittedFileName();
		String uploadPath = "E:/java Project/CollegeManagment/src/main/webapp/FeesSlip/"+fileName;
                
		try
		{
			
			
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/collegemanagment","root","rahulpatel");
			String qr = "insert into studentaccount values(?,?,?,?,?,?,?,?)";
			PreparedStatement  st = con.prepareStatement(qr);
			st.setString(1,currentYear);
			st.setString(2, Fees);
			st.setString(3, FeesDegree);
			st.setString(4, FeesBranch);
			st.setString(5, StudentEnrollment);
			st.setString(6, MobileNumber);
			st.setString(7, fileddate);
			st.setString(8,fileName);
			st.executeUpdate();
			con.close();
			
			FileOutputStream fo = new FileOutputStream(uploadPath); 
			InputStream is = file.getInputStream();
			
			byte data[] = new byte[is.available()];
			is.read(data);
			fo.write(data);
			fo.close();
			
				HttpSession session = request.getSession();
				session.setAttribute("sucess", "Fees Added Successfully");
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
