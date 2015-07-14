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
			String sql="select * from breakfast where number=?";
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
	public static Food add(Food food){
		try{
			Connection con=DBFactory.getConnection();
			String sql="insert into breakfast(number,id,smalldis,largedis,ingradients,price,image,bigimage) values(?,?,?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			int x=Integer.parseInt(food.getNumber());
			ps.setInt(1, x);
			ps.setString(2, food.getID());
			ps.setString(3, food.getSmalldis());
			ps.setString(4, food.getLargedis());
			ps.setString(5, food.getIngradients());
			ps.setDouble(6, food.getPrice());
			ps.setString(7, food.getImage());
			ps.setString(8, food.getBigimage());
			ps.executeUpdate();
			
			return food;
		}catch(Exception ex){
			
			ex.printStackTrace();
		    ex.getLocalizedMessage();
		    return null;
		}
	}
}
