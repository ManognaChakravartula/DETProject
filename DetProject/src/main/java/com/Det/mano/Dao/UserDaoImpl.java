package com.Det.mano.Dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Det.mano.entity.Cust;
import com.Det.mano.entity.User;

public class UserDaoImpl implements IUserDao
{
	private Connection connection;
	private String sql;
	private PreparedStatement pst;
	private ResultSet rs;
	
	public UserDaoImpl() throws ClassNotFoundException, SQLException 
	{ 
		connection = DetConnection.getConnection();
	}
	public String validateLoginDetails (User user) throws SQLException 
		{
		sql = "select * from login where email=? and password=?";
			pst = connection.prepareStatement(sql);
			pst.setString(1, user.getUserId());
			pst.setString(2, user.getPassword());
			rs = pst.executeQuery();
			

		if (rs.next())
			{
			
				return "Dashboard.html";
				
			} 
		else 
			{
				return "invalid userid or password";
			}
		}
	
	
	public String registerUser(User user) throws SQLException 
	{
	    sql = "insert into login values (?, ?, ?)"; 
	    pst = connection.prepareStatement(sql);
	    pst.setString(1, user.getUserName());
	    pst.setString(2, user.getUserId());
	    pst.setString(3, user.getPassword());
	    
	    pst.executeUpdate();
	    
	    return "index.html";
	}
	
	
	public String UpdateUserProfile(User user, String email) throws SQLException
	{
	    sql = "UPDATE login SET name = ? WHERE email = ?";
	    pst = connection.prepareStatement(sql);
	   
	    pst.setString(1, user.getUserName());
	    
	    pst.setString(2, email);
	    // Assuming 'email' is the user's email field
	    pst.executeUpdate();
	    System.out.println("hello");
	    return "Dashboard.html"; // You can return the JSP page path
	}
			
	   
	}

	

