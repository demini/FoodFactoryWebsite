package com.demini.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demini.dao.FoodDao;
import com.demini.dao.VeggieDAO;
import com.demini.entity.Food;

@WebServlet("/add")
public class AddItems extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String number=request.getParameter("number");
		String id=request.getParameter("id");
		String smalldis=request.getParameter("smalldis");
		String largedis=request.getParameter("largedis");
		String ingradients=request.getParameter("ingradients");
		String price=request.getParameter("price");
		String image=request.getParameter("image1");
		String image2=request.getParameter("image2");
		Double priceD=Double.parseDouble(price);
		
		Food food=new Food();
		food.setNumber(number);
		food.setID(id);
		food.setSmalldis(smalldis);
		food.setLargedis(largedis);
		food.setIngradients(ingradients);
		food.setPrice(priceD);
		food.setImage(image);
		food.setBigimage(image2);
		
		String type=request.getParameter("catergory");
		String one="1";
		String two="2";
		String three="3";
		String four="4";
		String five="5";
		String six="6";
		String seven="7";
		
		if(type.equals(three)){
			VeggieDAO.add(food);
			response.sendRedirect("home.jsp");
			
		}else {
			FoodDao.add(food);
			response.sendRedirect("home.jsp");
		}
		
		
		
		
		
	}

}
