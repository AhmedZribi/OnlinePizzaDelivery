package login;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Administrator")
public class Administrator extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Administrator() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String passwd = "admin";
		String pwd = request.getParameter("password");
		PrintWriter out = response.getWriter();
		if (pwd.equals(passwd)) {
			response.setHeader ("Refresh", "0;URL=Orders.jsp");
		} else {
			out.println("Wrong Password! Please try again.");
			response.setHeader ("Refresh", "1.5;URL=Login.jsp");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}