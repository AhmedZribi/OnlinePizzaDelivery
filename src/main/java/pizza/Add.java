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

@WebServlet("/Add")
public class Add extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Add() {
        super();
    }

	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		List<Pizza> pizzas = new ArrayList<Pizza>();
		pizzas = (List<Pizza>)session.getAttribute("pizzas");
		
		for (int i = 1; i<8; i++) {
			if (request.getParameter("pizza"+ i) != null && request.getParameter("price"+ i) != null ) {
				Pizza p = new Pizza (request.getParameter("pizza" + i), Integer.parseInt(request.getParameter("price" + i)));
				pizzas.add(p);
				session.setAttribute("pizzas", pizzas);
			}
		}
		
		response.setHeader ("Refresh", "0;URL=Menu.jsp");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
