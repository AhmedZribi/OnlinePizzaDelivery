package pizza;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Remove")
public class Remove extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Remove() {
        super();
    }

	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		
		List<Pizza> pizzas = new ArrayList<Pizza>(); 
		pizzas = (List<Pizza>)session.getAttribute("pizzas");
		for (Iterator<Pizza> iterator = pizzas.iterator(); iterator.hasNext();) {
			Pizza p = iterator.next();
			if (request.getParameter(p.getName()) != null) {
				iterator.remove();
				break;
				
			}
			
		}
		session.setAttribute("pizzas", pizzas);
		response.setHeader ("Refresh", "0;URL=View.jsp");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}