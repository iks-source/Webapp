

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class healthcheck
 */
@WebServlet("/healthcheck")
public class healthcheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public healthcheck() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String a =request.getParameter("br");
		String b =request.getParameter("cp");
		String c =request.getParameter("p");
		String d =request.getParameter("dc");
		String e =request.getParameter("fever");
		
		
		if(a.contentEquals("yes") || b.contentEquals("yes") || c.contentEquals("yes")) {
			response.sendRedirect("book.jsp");
		}
		else if (d.contentEquals("yes") || e.contentEquals("high")) {
			response.sendRedirect("risk.jsp");
		}
		else {
			response.sendRedirect("healthy.jsp");
		}
		}
	}


