package com.Det.mano.Dao;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DetConnection
{
private static Connection connection;
private DetConnection(){}

public static Connection getConnection() throws  ClassNotFoundException,SQLException
{
	if(connection==null)
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
	
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","mano");
	
	}
	return connection;
}
}