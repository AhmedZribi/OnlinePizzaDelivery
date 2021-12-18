package pizza;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Ordering")
public class Ordering extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Ordering() {
        super();
    }

	@SuppressWarnings({ "unused", "unchecked" })
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		javax.servlet.ServletContext application = getServletContext();
		if (application.getAttribute("orders") == null) {
			List<Order> orders = new ArrayList<Order>();
			application.setAttribute("orders", orders);
		} 			
		List<Order> orders = (List<Order>)application.getAttribute("orders");
		
		HttpSession session = request.getSession(false);
		String f = request.getParameter("fname");
		String l = request.getParameter("lname");
		String a = request.getParameter("address");
		List<Pizza>pizzas = new ArrayList<Pizza>();
		Order o = new Order();
		o.setFirstName(f);
		o.setLastName(l);
		o.setAddress(a);
		o.setPizzas((List<Pizza>)session.getAttribute("pizzas"));
		int tot = 0;
		for (Pizza p : o.getPizzas()) {
			tot += p.getPrice();
		}
		o.setTotalCost(tot);
		o.setId(session.getId());
		orders.add(o);
		application.setAttribute("orders", orders);
		session.invalidate();
		response.setHeader ("Refresh", "0;URL=Login.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
