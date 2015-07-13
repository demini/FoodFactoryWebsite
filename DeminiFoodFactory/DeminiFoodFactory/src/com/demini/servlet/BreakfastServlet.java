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
import com.demini.dao.FoodDao;
import com.demini.entity.Food;


@WebServlet("/breakfast")
public class BreakfastServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*Food food=new Food();
		Food ff=FoodDao.load(food);
		HttpSession session=request.getSession();
		String s;
		for(int i=1; i<10; i++){
			s="breakfirstimage"+i;
			session.setAttribute(s, ff.getImage());
			session.setAttribute("number"+i, ff.getNumber());
			session.setAttribute("finalNumber", i);
			
			
		}
		response.sendRedirect("breakfirst.jsp");
		
		
		
		
	}*/
		try{
		Connection con=DBFactory.getConnection();
		String sql="select number,id,image from food ";
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
			session.setAttribute("breakfirstimage"+no, image);
			session.setAttribute("head"+no, head);
			session.setAttribute("finalNumber", no);
			no++;
		}
		}catch(Exception ex){
			ex.printStackTrace();
		}
		response.sendRedirect("breakfirst.jsp");
	}
}
