package com.demini.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.demini.entity.Member;

public class MemberDAO {
	public static String register(Member member){
		try{
			Connection con=DBFactory.getConnection();
			String sql="insert into member(name,username,password) values(?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, member.getName());
			ps.setString(2, member.getUsername());
			ps.setString(3, member.getPassword());
			ps.executeUpdate();
		return "registration successfull";}
		catch(Exception ie){
			ie.printStackTrace();
			return ie.getLocalizedMessage();
		}
	}
	
	public static Member login(String username, String password){
		try{
			Connection con=DBFactory.getConnection();
			String sql="select * from member where username=? and password=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, username );
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				Member member=new Member();
				member.setID(rs.getInt("id"));
				member.setName(rs.getString("name"));
				member.setUsername(rs.getString("username"));
				member.setPassword(rs.getString("password"));
				return member;
			}else{
				return null;
			}
			
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
}
