package com.demini.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		  String name=request.getParameter("name");
	      String username=request.getParameter("username");
	      String password=request.getParameter("password2");
	        Connection con=null;
	        Statement stmt=null;
	        PrintWriter out=response.getWriter();
	        
	        try
	        {
	              Class.forName("com.mysql.jdbc.Driver");
	              con = DriverManager.getConnection( "jdbc:mysql://localhost/food_factory","root","" );
	              stmt=con.createStatement();
	              int i = stmt.executeUpdate("insert into login values('"+name+"', '"+username+"', '"+password+"')");
	              if(i>0){
	            	response.setContentType("text/html");
	                out.println("<html><body>");
            	    out.println("<script type=\"text/javascript\">");
            	    out.println("var popwin = window.open(\"congratz.jsp\")");
            	    out.println("setTimeout(function(){ popwin.close(); window.location.href='login.jsp';},3000)");
            	    out.println("</script>");
            	    out.println("</body></html>");
	                
	                }
	              else
	                out.println("Insert Unsuccessful");
	        }
	        catch(Exception e)
	        {
	          out.println("Some thing went wrong!"+e);       
	        }
	}

}
