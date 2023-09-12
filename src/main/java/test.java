import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpSession;

public class test {
	public static void main(String[] args) {
		String email = "client@gmail.com";
		String password = "04edaf900d905d71f8ec49419fcbd79031bad6d19bebddfb5438b3b7fbef75ae";
		
		ConnectDB connect = new ConnectDB();
		Connection conn = connect.getConnection();
		try {
			String sql = "SELECT username FROM customer WHERE email=? AND password=?";
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, email);
			pstm.setString(2, password);
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				System.out.print(rs.getString(1));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
