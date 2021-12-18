package pizza;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sql.SqlStatement;

@WebServlet("/Save")
public class Save extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Save() {
        super();
    }
    
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		javax.servlet.ServletContext application = getServletContext();
		SqlStatement ss = new SqlStatement();
		List<Order> orders = new ArrayList<Order>();
		List<Pizza> pizzas = new ArrayList<Pizza>();
		orders = (List<Order>) application.getAttribute("orders");
		
		for (Order o : orders) {
			ss.addOrder(o);
			pizzas = o.getPizzas();
			for (Pizza p : pizzas) {
				ss.addPizza(p);
			}
		}
		application.removeAttribute("orders");
		response.setHeader ("Refresh", "0;URL=Orders.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
