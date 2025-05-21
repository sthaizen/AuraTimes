package com.Auratimes.config;
//Importing 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class DbConfig {

	// Database configuration information
	private static final String DB_NAME = "aura"; // Name of the database 
	private static final String URL = "jdbc:mysql://localhost:3307/" + DB_NAME; // Full JDBC URL including the database name and port
	private static final String USERNAME = "root";  // Username 
	private static final String PASSWORD = ""; // Password 

	// This method to create and return a connection to the database
	public static Connection getDbConnection() 
			throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver"); // Loading the MySQL  
		return DriverManager.getConnection(URL, USERNAME, PASSWORD);
	}
}