package com.demini.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.demini.dao.DBFactory;


@WebServlet("/veggie")
public class VeggieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			Connection con=DBFactory.getConnection();
			String sql="select number,id,image from veggie ";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			HttpSession session=request.getSession();
			int no;
			no=1;
			while(rs.next()){
				String image=rs.getString("image");
				int id=rs.getInt("number");
				String head=rs.getString("id");
				session.setAttribute("IdNumber"+no, id);
				session.setAttribute("veggieimage"+no, image);
				session.setAttribute("head"+no, head);
				session.setAttribute("finalNumber", no);
				no++;
			}
			}catch(Exception ex){
				ex.printStackTrace();
			}
			response.sendRedirect("veggie.jsp");
		}
	}


