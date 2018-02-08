package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConexion {
	public static Connection getConnection(){
		Connection con = null; 
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/dompdf";
			String usr = "root";
			String psw = "mysql";
			con = DriverManager.getConnection(url, usr, psw);
			
		} catch (ClassNotFoundException e) {	
			
			System.out.println("Error ---> al cargar el driver");			
			e.printStackTrace();
			
		} catch (SQLException e) {
			
			System.out.println("Error ---> al conectar");
			e.printStackTrace();
		}
		return con;
	}
}
