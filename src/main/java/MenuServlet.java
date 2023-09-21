import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.CategoryItem;
import bean.MenuItem;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name="menuServlet", value="/menuServlet")
public class MenuServlet extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		ConnectDB connect = new ConnectDB();
		Connection conn = connect.getConnection();
		ArrayList<CategoryItem> categoryItems = new ArrayList<>(); 
		ArrayList<MenuItem> menuItems = new ArrayList<>(); 
		try {
			String sql = "SELECT * FROM category";
			PreparedStatement stm = conn.prepareStatement(sql);
			ResultSet rs = stm.executeQuery();
			while (rs.next()) {
				categoryItems.add(new CategoryItem(
						rs.getInt(1), //id
						rs.getString(2) //name
						));
			}
			sql = "SELECT food.id, food.name, description, url, price, category.name "
					+ "FROM food INNER JOIN category ON food.category_id = category.id "
					+ "ORDER BY category.id ASC, food.id ASC";
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			while (rs.next()) {
				menuItems.add(new MenuItem(
							rs.getInt(1), //id
							rs.getString(2), //name
							rs.getString(3), //description
							rs.getString(4), //url
							rs.getInt(5), //price
							rs.getString(6) //category
						));
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
		
		req.setAttribute("categoryItems", categoryItems);
		req.setAttribute("menuItems", menuItems);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/menu.jsp");
		dispatcher.forward(req, resp);
	}
}
