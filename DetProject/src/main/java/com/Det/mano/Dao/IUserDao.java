package com.Det.mano.Dao;

import java.sql.SQLException;

import com.Det.mano.entity.User;

public interface IUserDao 
{
	 String validateLoginDetails(User user) throws SQLException;
	 String registerUser(User user) throws SQLException;
	 String UpdateUserProfile(User user, String email) throws SQLException; 
}
