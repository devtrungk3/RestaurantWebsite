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

@WebServlet(name="signup", value="/signup")
public class SignUpServlet extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String confirmPass = req.getParameter("confirm-password");
		String username = req.getParameter("username");
		
		ConnectDB connect = new ConnectDB();
		Connection conn = connect.getConnection();
		
		if (emailExist(conn, email)) {
			returnError(email, username, req, resp, "Email already exists");
		} else if (password.length() <= 6) {
			returnError(email, username, req, resp, "Password must longer than 6 characters");
		} else if (!password.equals(confirmPass)) {
			returnError(email, username, req, resp, "Confirm password doesn't match");
		} else {
			try {
				String sql = "INSERT INTO customer(`email`, `password`, `username`, `phone`, `address`) VALUES (?, ?, ?, NULL, NULL)";
				PreparedStatement stm = conn.prepareStatement(sql);
				stm.setString(1, email);
				stm.setString(2, encrypt(password));
				stm.setString(3, username);
				stm.execute();
				HttpSession session = req.getSession();
				session.setAttribute("username", username);
				resp.sendRedirect("index.jsp");
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
		        try {
		            conn.close();
		        } catch (SQLException e) {
		            e.printStackTrace();
		        }
			}
		}
	}
	
	private boolean emailExist(Connection conn, String email) {
		try {
			String sql = "SELECT COUNT(email) FROM customer WHERE email=?";
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, email);
			ResultSet rs = pstm.executeQuery();
			if (rs.next()) {
				if (rs.getInt(1) == 0) return false;
				else return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return true;
	}
	
	private void returnError(String email, String username, HttpServletRequest req, HttpServletResponse resp, String error) throws ServletException, IOException {
		req.setAttribute("errorSignUp", error);
		req.setAttribute("email", email);
		req.setAttribute("username", username);
		req.setAttribute("signupOpened", true);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/login.jsp");
		dispatcher.forward(req, resp);
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
