package com.demini.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpSession;

import com.demini.entity.Food;


public class FoodDao {
	public static Food display(String number){
		try{
			Connection con=DBFactory.getConnection();
			String sql="select * from food where number=?";
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1, number);
			
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				Food food=new Food();
				
				food.setID(rs.getString("id"));
				food.setSmalldis(rs.getString("smalldis"));
				food.setLargedis(rs.getString("largedis"));
				food.setIngradients(rs.getString("ingradients"));
				food.setPrice(rs.getDouble("price"));
				food.setImage(rs.getString("image"));
				food.setBigimage(rs.getString("bigimage"));
				
				return food;
			}else{
				return null;
			}
			
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	public static Food load(Food food){
		try{
			Connection con=DBFactory.getConnection();
			String sql="select number,image from food ";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				Food food2=new Food();
				
				food2.setImage(rs.getString("image"));
				food2.setNumber(rs.getString("number"));
				return food;
			
			}else{
				return null;
			}
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
			
		}
	}
}
