package com.demini.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.demini.entity.Food;
import com.demini.entity.Member;
import com.demini.dao.FoodDao;
import com.demini.dao.MemberDAO;


@WebServlet("/foodDetails")
public class FoodItems extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String number=request.getParameter("number");
		
		
		
		Food food=FoodDao.display(number);
		if(food!=null){
			 HttpSession session=request.getSession();
			 session.setAttribute("id", food.getID());
			 session.setAttribute("smalldis", food.getSmalldis());
			 session.setAttribute("largedis", food.getLargedis());
			 session.setAttribute("ingradients",food.getIngradients());
			 session.setAttribute("price", food.getPrice());
			 session.setAttribute("image", food.getImage());
			 session.setAttribute("bigimage", food.getBigimage());
			 
			 response.sendRedirect("foodItems.jsp");
		}else {
			 response.sendRedirect("home.jsp");
		}
	}

}
