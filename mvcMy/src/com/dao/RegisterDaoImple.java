package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.*;
import com.conn.*;
import com.dto.*;
public class RegisterDaoImple implements RegisterDao{
	private Myconn myconn;
	

	public RegisterDaoImple() {
		myconn = new Myconn();
	}

	@Override
	public int InsertUser(User user) {
		int i = 0;
		try {
			Connection con = myconn.getConn();
			PreparedStatement s = con.prepareStatement("insert into user(full_name,user_name,user_pass) values (?,?,?)");
			s.setString(1, user.getFullName());
			s.setString(2, user.getUserName());
			s.setString(3, user.getUserPass());
			i=s.executeUpdate();
			s.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return i;
	}

	@Override
	public boolean login(User user) {
		boolean flag = false;
		try {
			Connection con = myconn.getConn();
			PreparedStatement s = con.prepareStatement("select * from user where user_name = ? and user_pass = ?");
			
			s.setString(1, user.getUserName());
			s.setString(2, user.getUserPass());
			
			ResultSet rs = s.executeQuery();
			if(rs.next()) {
				user.setUserId(rs.getInt("user_id"));
				user.setFullName(rs.getString("full_name"));
				flag = true;
			}
			s.close();
		}catch( ClassNotFoundException | SQLException  e) {
			e.printStackTrace();
		}
		
		return flag;
	}
      
}
