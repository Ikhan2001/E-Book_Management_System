package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.user.entity.User;

public class UserDAOImpl implements UserDAO{
	
	private Connection con;
	
	
	
	public UserDAOImpl(Connection con) {
		super();
		this.con = con;
	}



	public boolean userRegister(User us) {
		boolean f=false;
		try {
			String sql="insert into user(name,email,phno,password) values(?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, us.getName());
			ps.setString(2, us.getEmail());
			ps.setString(3, us.getPhno());
			ps.setString(4, us.getPassword());
			int x=ps.executeUpdate();
			if(x==1) {
				f=true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}



	public User login(String email, String password) {
		User us=null;
		try {
			String sql="Select * from user where email=? and password=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				us=new User();
				us.setId(rs.getInt(1));
				us.setName(rs.getString(2));
				us.setEmail(rs.getString(3));
				us.setPhno(rs.getString(4));
				us.setPassword(rs.getString(5));
				us.setLandmark(rs.getString(6));
				us.setCity(rs.getString(7));
				us.setPincode(rs.getString(8));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return us;
	}
	

}