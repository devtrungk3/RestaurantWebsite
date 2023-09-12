import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectDB {
	public ConnectDB() {};
	
	private String user = "root";
	private String pass = "";
	
	public Connection getConnection() {
		Connection conn = null;
		try {
			String dbName = "restaurant_web";
			String url = "jdbc:mysql://localhost/" + dbName;
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, pass);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
}