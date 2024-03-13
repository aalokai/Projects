package CrudF.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConfig {
	
	public static Connection getConnection() throws SQLException, ClassNotFoundException
	{
		String dbURL="jdbc:mysql://localhost:3306/apple?useSSL=false";
		String dbUsername="aalok";
		String dbPassword="1234";
		Connection con=null;
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con= DriverManager.getConnection(dbURL,dbUsername,dbPassword);
		} catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		
		
		return con;
	}

}
