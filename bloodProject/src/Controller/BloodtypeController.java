package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.BloodtypeDAO;
import VO.BloodtypeVO;

/**
 * Servlet implementation class bloodtypeController
 */
@WebServlet("/BloodtypeController")
public class BloodtypeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BloodtypeController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag = request.getParameter("flag");

		if (flag.equals("search")) {
			search(request, response);
		}

		else if(flag.equals("edit"))
		{
			System.out.println("in flag edit");
		edit(request, response);
		}
		else if (flag.equals("delete")) {
			delete(request, response);
			search(request, response);
		}
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		int BloodtypeId=Integer.parseInt(request.getParameter("id"));
		  System.out.println(BloodtypeId);
		
		BloodtypeVO Bloodtypevoobj=new BloodtypeVO();
		Bloodtypevoobj.setBloodtypeId(BloodtypeId);;	

		BloodtypeDAO Bloodtypedaoobj=new BloodtypeDAO();
		Bloodtypedaoobj.Delete(Bloodtypevoobj);

	}

	private void edit(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int BloodtypeId=Integer.parseInt(request.getParameter("id"));
		  System.out.println(BloodtypeId);
		
		BloodtypeVO Bloodtypevoobj=new BloodtypeVO();
		Bloodtypevoobj.setBloodtypeId(BloodtypeId);;	

		BloodtypeDAO Bloodtypedaoobj=new BloodtypeDAO();
		List ls=Bloodtypedaoobj.edit(Bloodtypevoobj);
		
		HttpSession s=request.getSession();
		s.setAttribute("editList",ls);
		response.sendRedirect("admin/editBloodtype.jsp");
		/*response.sendRedirect("admin/editBloodtype.jsp");*/

		
	}

	private void search(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub

		BloodtypeDAO bloodtypedaoobj = new BloodtypeDAO();

		List ls = bloodtypedaoobj.search();

		HttpSession session = request.getSession();
		session.setAttribute("searchList", ls);

		response.sendRedirect("admin/viewBloodtype.jsp");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String flag = request.getParameter("flag");
		
		if (flag.equals("insert")) {
			insert(request, response);
		}
		if (flag.equals("update")) {
			update(request, response);
		}

	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		int bloodtypeId=Integer.parseInt(request.getParameter("bloodtypeId"));
		String bloodType=request.getParameter("bloodType");
		String bloodtypeDescription=request.getParameter("bloodtypeDescription");
		
		BloodtypeVO bloodtypevoobj=new BloodtypeVO();
		bloodtypevoobj.setBloodtypeId(bloodtypeId);
		bloodtypevoobj.setBloodType(bloodType);	
		bloodtypevoobj.setBloodtypeDescription(bloodtypeDescription);
		bloodtypevoobj.setDeleteStatus("Active");
		
		BloodtypeDAO bloodtypedaoobj=new BloodtypeDAO();
		bloodtypedaoobj.update(bloodtypevoobj);
		
		search(request, response);
		
		
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub

		String bloodType = request.getParameter("bloodType");
		String bloodtypeDescription = request.getParameter("bloodtypeDescription");

		BloodtypeVO bloodtypevoobj = new BloodtypeVO();
		bloodtypevoobj.setBloodType(bloodType);
		bloodtypevoobj.setBloodtypeDescription(bloodtypeDescription);
		bloodtypevoobj.setDeleteStatus("Active");
		BloodtypeDAO bloodtypedaoobj = new BloodtypeDAO();
		bloodtypedaoobj.insert(bloodtypevoobj);

		response.sendRedirect("admin/addBloodtype.jsp");

	}

}
