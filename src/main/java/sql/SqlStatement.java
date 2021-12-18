package sql;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import pizza.Order;
import pizza.Pizza;

public class SqlStatement {

	public List<Order> getOrders() {
		List<Order> orders = new ArrayList<Order>();
		Connection conn = SingletonConnection.getConnection();
		
		try {
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM ORDERS");
			
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				Order o = new Order();
				o.setId(rs.getString("id"));
				o.setLastName(rs.getString("lname"));
				o.setFirstName(rs.getString("fname"));
				o.setAddress(rs.getString("address"));
				o.setTotalCost(rs.getInt("total_cost"));
				orders.add(o);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return orders;
	}
	
	public List<Pizza> getPizzas() {
		List<Pizza> pizzas = new ArrayList<Pizza>();
		Connection conn = SingletonConnection.getConnection();
		
		try {
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM PIZZAS");
			
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				Pizza p = new Pizza();
				p.setName(rs.getString("pizza_name"));
				p.setPrice(rs.getInt("price"));
				pizzas.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return pizzas;
	}

	public void addOrder(Order o) {
		Connection conn = SingletonConnection.getConnection();
		
		try {
			PreparedStatement ps = conn.prepareStatement("INSERT INTO ORDERS (id,lname,fname,address,total_cost) VALUES (?,?,?,?,?)");
			ps.setString(1, o.getId());
			ps.setString(2, o.getLastName());
			ps.setString(3, o.getFirstName());
			ps.setString(4, o.getAddress());
			ps.setInt(5, o.getTotalCost());
			ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void addPizza(Pizza p) {
		Connection conn = SingletonConnection.getConnection();
		
		try {
			PreparedStatement ps = conn.prepareStatement("INSERT INTO PIZZAS (pizza_name,price) VALUES (?,?)");
			ps.setString(1, p.getName());
			ps.setInt(2, p.getPrice());
			ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
