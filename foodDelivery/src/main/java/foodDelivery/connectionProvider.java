package foodDelivery;

import java.sql.*;

public class connectionProvider {
	public static Connection getCon() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ospjsp", "root", "1234");
			return con;
		} catch (Exception e) {
			System.out.print(e);
			return null;
		}

	}

}
