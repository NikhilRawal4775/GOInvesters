package test;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.mysql.cj.xdevapi.Statement;



//@WebServlet("/abc")
public class SignupServelet extends HttpServlet{
 
// public void init()
// {
//  
// }
// 
// public void service(ServletRequest req, ServletResponse res) throws IOException,ServletException
// {
//  PrintWriter pw=res.getWriter();
//  res.setContentType("text/html");
//  pw.println("DIWALI VACATION START FROM TOMORROW");
// }
// 
 protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
  // TODO Auto-generated method stub 
  String uname=req.getParameter("username2");
  String pass=req.getParameter("password");
  String cpass=req.getParameter("cpassword");
  String phno=req.getParameter("phno");
  int age=Integer.valueOf(req.getParameter("age"));
  int sal=Integer.valueOf(req.getParameter("salary"));
  String name=req.getParameter("name2");
  String occ=req.getParameter("prof");

  
  PrintWriter out=res.getWriter();
  Connection conn=DBUtil.getDBConnection();
  try {
	 
	  //Statement st = (Statement) conn.createStatement();
	 // ((java.sql.Statement) st).executeUpdate("INSERT INTO `rawdbprofile`(`username`, `name`, `age`, `phonenumber`, `profession`, `salary`) VALUES ('"+uname.toString()+"','"+name.toString()+"',"+age+",'"+phno.toString()+"','"+occ.toString()+"',"+sal+")");
	 // ((java.sql.Statement) st).executeUpdate("INSERT INTO `rawdbprofile`(`username`, `name`, `age`, `phonenumber`, `profession`, `salary`) VALUES ('S1810992063','Nisha',22,'7837683044','Student',5000)");
	  PreparedStatement ps = conn.prepareStatement("INSERT INTO `rawdbprofile`(`username`, `name`, `age`, `phonenumber`, `profession`, `salary`) VALUES (?,?,?,?,?,?)");
	  ps.setString(1,uname);
	  ps.setString(2,name);
	  ps.setInt(3,age);
	  ps.setString(4,phno);
	  ps.setInt(6, sal);
	  ps.setString(5,occ);
	  ps.executeUpdate();
	  // PreparedStatement ps = conn.prepareStatement("INSERT INTO `rawdbprofile`(`username`, `name`, `age`, `phonenumber`, `profession`, `salary`) VALUES ("+uname+","+name+","+age+","+phno+","+occ+","+sal+")");
      //ps.executeQuery();
		System.out.println("Data Inserted");
		out.println("Successfully Inserted"); 
		
  }catch(Exception e) {
	  e.getMessage();
	  out.println("Error Occured"); 

  }
  if(pass.equals(cpass)) {
  try {
	 
	  //Statement st = (Statement) conn.createStatement();
	 // ((java.sql.Statement) st).executeUpdate("INSERT INTO `rawdbprofile`(`username`, `name`, `age`, `phonenumber`, `profession`, `salary`) VALUES ('"+uname.toString()+"','"+name.toString()+"',"+age+",'"+phno.toString()+"','"+occ.toString()+"',"+sal+")");
	 // ((java.sql.Statement) st).executeUpdate("INSERT INTO `rawdbprofile`(`username`, `name`, `age`, `phonenumber`, `profession`, `salary`) VALUES ('S1810992063','Nisha',22,'7837683044','Student',5000)");
	  PreparedStatement ps1 = conn.prepareStatement("INSERT INTO `login`(`email`, `password`) VALUES (?,?)");
	  ps1.setString(1,uname);
	  ps1.setString(2,pass);
	  ps1.executeUpdate();
	  // PreparedStatement ps = conn.prepareStatement("INSERT INTO `rawdbprofile`(`username`, `name`, `age`, `phonenumber`, `profession`, `salary`) VALUES ("+uname+","+name+","+age+","+phno+","+occ+","+sal+")");
      //ps.executeQuery();
		System.out.println("you can start login now");
		out.println("You can Login with your account"); 
		
		
  }catch(Exception e) {
	  e.getMessage();
	  out.println("Error Occured"); 

  }
  }
  


// 
//  if(i.equals("admin") && j.equals("1234")) {
//	  out.println("Welcome nikhil");
//	  RequestDispatcher rd=req.getRequestDispatcher("abc.html");
//	  rd.include(req,res);
//  }else {
//	 
//  }
  
 }
// public void destroy()
// {
//  
// }

}