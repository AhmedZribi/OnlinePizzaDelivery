package login;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pizza.Pizza;

@WebServlet("/User")
public class User extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public User() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		
		if (session == null){
			session = request.getSession(true);
			List<Pizza> pizzas = new ArrayList<Pizza>();
			session.setAttribute("pizzas", pizzas);
		} 
		List<Pizza> pizzas = new ArrayList<Pizza>();
		session.setAttribute("pizzas", pizzas);
		response.setHeader ("Refresh", "0;URL=Menu.jsp");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}