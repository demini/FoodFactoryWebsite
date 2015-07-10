package com.demini.servlet;

import java.io.IOException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.demini.dao.MemberDAO;
import com.demini.entity.Member;



@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		
		
		Member member=MemberDAO.login(username, password);
		if(member!=null){
			 HttpSession session=request.getSession();
			 session.setAttribute("name", member.getName());
			 response.sendRedirect("home.jsp");
		}else {
			 response.sendRedirect("login.jsp");
		}
		
	    
	}

}
