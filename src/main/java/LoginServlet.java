import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name="login", value="/login")
public class LoginServlet extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		String email = req.getParameter("email");
		String password = encrypt(req.getParameter("password"));
		
		ConnectDB connect = new ConnectDB();
		Connection conn = connect.getConnection();
		try {
			String sql = "SELECT username FROM customer WHERE email=? AND password=?";
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, email);
			pstm.setString(2, password);
			ResultSet rs = pstm.executeQuery();
			if (rs.next()) {
				HttpSession session = req.getSession();
				session.setAttribute("username", rs.getString(1).toString());
				resp.sendRedirect("index.jsp");
			} else {
				req.setAttribute("errorLogin", "Email or password incorrect");
				RequestDispatcher dispatcher = req.getRequestDispatcher("/login.jsp");
				dispatcher.forward(req, resp);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
		    if (conn != null) {
		        try {
		            conn.close();
		        } catch (SQLException e) {
		            e.printStackTrace();
		        }
		    }
		}
	}
	
	private String encrypt(String pass) {
		StringBuilder hexString = new StringBuilder();
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			byte[] passBytes = pass.getBytes(StandardCharsets.UTF_8);
			byte[] hashBytes = md.digest(passBytes);
            for (byte b : hashBytes) {
                hexString.append(String.format("%02x", b));
            }
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return hexString.toString();
	}
}
