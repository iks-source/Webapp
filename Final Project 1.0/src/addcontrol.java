

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdbc.add;


/**
 * Servlet implementation class addcontrol
 */
@WebServlet("/addcontrol")
public class addcontrol extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addcontrol() {
        super();
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
		String phone =request.getParameter("phone");
		String hospital =request.getParameter("hospital");
		String date =request.getParameter("date");
		String time =request.getParameter("time");
		
		if(phone!= null && hospital!= null && date!= null && time!= null) {
			add add=new add();
			
			add.setPhone(phone);
			add.setHospital(hospital);
			add.setDate(date);
			add.setTime(time);
			
			if(request.getParameter("id")!= null && !request.getParameter("id").isEmpty()) {
				int id = Integer.parseInt(request.getParameter("id"));
				
				if(add.updateData(id)==true) {
					RequestDispatcher rd = request.getRequestDispatcher("view.jsp");
					rd.forward(request, response);
				}else {
					RequestDispatcher rd = request.getRequestDispatcher("retry.jsp");
					rd.forward(request, response);
				}
			}
			else {
				
				if(add.storeData()==true) {
					RequestDispatcher rd=request.getRequestDispatcher("confirm.jsp");
					rd.forward(request, response);
				}
				else {
					RequestDispatcher rd=request.getRequestDispatcher("retry.jsp");
					rd.forward(request, response);
				}
				
			}
			
			
			
		}
		
	}
	}


