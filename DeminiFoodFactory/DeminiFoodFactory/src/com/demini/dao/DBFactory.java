package com.demini.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBFactory {
	static Connection con;
	
	public static Connection getConnection() throws Exception{
		if(con==null){
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/food_factory","root","");
		}
		return con;
	}
	
}
