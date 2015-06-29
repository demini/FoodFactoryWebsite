package com.demini.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	    String username=request.getParameter("username");
	    String password=request.getParameter("password");
	        Connection con=null;
	        PreparedStatement ps=null;
	        PrintWriter out=response.getWriter();
	        try
	        {
	              Class.forName("com.mysql.jdbc.Driver");
	              con = DriverManager.getConnection( "jdbc:mysql://localhost/food_factory","root","" );
	              ps=con.prepareStatement("select * from login where username=? and password=?");
	              ps.setString(1,username);
	              ps.setString(2,password);
	          
	              ResultSet rs =ps.executeQuery();
	              if(rs.next()){
	             response.sendRedirect("home.jsp");	
            }
	              
          else
        	  request.setAttribute("error", "Unknown user, please try again");
	          request.getRequestDispatcher("/login.jsp").forward(request, response);
	          
    }
    catch(Exception e)
    {
      out.println("Some thing went wrong! "+e);       
    }
	}

}
