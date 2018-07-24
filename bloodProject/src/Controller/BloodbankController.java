package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.StateDAO;

/**
 * Servlet implementation class BloodbankController
 */
@WebServlet("/BloodbankController")
public class BloodbankController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BloodbankController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
String flag=request.getParameter("flag");
		
		if(flag.equals("loadstatecity"))
		{
			search(request,response);
			/*response.sendRedirect("user/registration.jsp");	*/		
		}		
	}

	private void search(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		StateDAO statedaoobj = new StateDAO();
		List ls = statedaoobj.search();
		
		HttpSession session = request.getSession();
		session.setAttribute("searchState",ls);
		
		response.sendRedirect("user/viewBloodbank.jsp");
		
		
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	

}
}
