package dao;

import java.sql.Connection;
import java.sql.DriverManager;


public class SingletonConnection {
	private static Connection connection;
	private static String url = "jdbc:mysql://localhost:3306/DB_CATAL";
	private static String name = "moustapha";
	private static String pass = "diouf";
	static {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Chargement reussi");
			connection = DriverManager.getConnection(url,name,pass);
			System.out.println("connexion reussi");
		}catch (Exception e) {
			// TODO: handle exception
		}
	}
	public static Connection getConnection() {
		return connection;
	}

}
