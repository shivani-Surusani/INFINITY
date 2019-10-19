import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnector {
	
	private static Connection conn1 = null;
	public void db() {
		String driver = "oracle.jdbc.driver.OracleDriver";
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String username = "system";
		String password = "12345";
		try {
			conn1 = DriverManager.getConnection(url, username, password);
		} catch (SQLException e) {
			System.out.println("Database Connection Unsuccessful. Throw your laptop out the window");
		}
	}
	
	public static Connection getInstance() {
		if(conn1 == null) {
			DbConnector x=new DbConnector();
			x.db();
			}
		return conn1;
	}

}