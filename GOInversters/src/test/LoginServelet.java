package test;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.mysql.cj.xdevapi.Statement;




public class LoginServelet extends HttpServlet{
 
// public void init()
// {
//  
// }
 
// public void service(ServletRequest req, ServletResponse res) throws IOException,ServletException
// {
//  PrintWriter pw=res.getWriter();
//  res.setContentType("text/html");
//  pw.println("DIWALI VACATION START FROM TOMORROW");
// }

 protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
  // TODO Auto-generated method stub 
  String i=req.getParameter("email");
  String j=req.getParameter("password");
  PrintWriter out=res.getWriter();
  
  try {
   Connection con=DBUtil.getDBConnection();
   java.sql.Statement st= con.createStatement();
ResultSet rs= st.executeQuery("SELECT * FROM `login` WHERE email='"+i.toString()+"' and password='"+j.toString()+"'");
   
if(rs.next()) {
	   out.println("Welcome"+" "+i);
	   RequestDispatcher rd=req.getRequestDispatcher("profile");
	   rd.forward(req,res);
	   System.out.println("Login Successful");
   }
   else { 
	   System.out.println("invalid username and password");
	   RequestDispatcher rd=req.getRequestDispatcher("account.jsp");
	   rd.include(req,res);
	   }
	  
  }catch(Exception e) {
	  e.getMessage();
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