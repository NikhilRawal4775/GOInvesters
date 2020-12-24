package test;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ProfileServelet extends HttpServlet{
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		PrintWriter pw = res.getWriter();
		pw.println("Welcome to the profile page");
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		PrintWriter pw = res.getWriter();
		
		String uname = req.getParameter("email");
		Connection conn = DBUtil.getDBConnection();

		pw.println("<h1>Welcome " + uname + "</h1>");
		
		try {
			PreparedStatement ps = conn.prepareStatement("select * from rawdbprofile where username = ?");
			ps.setString(1, uname);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				String uName = rs.getString(1);
				String name = rs.getString(2);
				int age = rs.getInt(3);
				String pno = rs.getString(4);
				String proff = rs.getString(5);
				int sal = rs.getInt(6);
				String str = "Username: " +  uName + "\nName: " + name +"\nAge: " + age +"\nPhone Number: "+pno+ "\nOccupation: " + proff + "\nSalary: " + sal;
				pw.println(str);
			}else {
				pw.println("No data found");
			}			
			
		} catch (SQLException e) {
			System.out.println("Exception in profileServlet class");
			e.printStackTrace();
		}
		
		
	}
}
