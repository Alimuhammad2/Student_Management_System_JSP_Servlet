package Connections;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {

	private static Connection con = null;

	public static Connection getCon() {

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_db", "root", "root");

		} catch (Exception e) {
			e.printStackTrace();
		}

		return con;
	}

}
