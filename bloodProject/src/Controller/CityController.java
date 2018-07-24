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
import DAO.CityDAO;
import DAO.StateDAO;
import VO.BloodtypeVO;
import VO.CityVO;
import VO.StateVO;

/**
 * Servlet implementation class CityController
 */
@WebServlet("/CityController")
public class CityController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CityController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String flag = request.getParameter("flag");

		if (flag.equals("search")) {
			search(request, response);
		} else if (flag.equals("loadState")) {
			loadState(request, response);
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
		
		int cityId=Integer.parseInt(request.getParameter("id"));
		  System.out.println(cityId);
		
		CityVO cityvoobj=new CityVO();
		cityvoobj.setCityId(cityId);	

		CityDAO citydaoobj=new CityDAO();
		citydaoobj.Delete(cityvoobj);
	}

	private void loadState(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		StateDAO citydaoobj = new StateDAO();
		List ls = citydaoobj.search();

		HttpSession session = request.getSession();
		session.setAttribute("searchList", ls);

		response.sendRedirect("admin/addCity.jsp");
		
	}

	private void edit(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("in controller edit method");
		
		int cityId=Integer.parseInt(request.getParameter("id"));
		  System.out.println(cityId);
		
		CityVO cityvoobj=new CityVO();
		cityvoobj.setCityId(cityId);
		
		CityDAO citydaoobj=new CityDAO();
		List ls=citydaoobj.edit(cityvoobj);
		
		StateDAO statedaoobj=new StateDAO();
		List ls1=statedaoobj.search();
		
		HttpSession s=request.getSession();
		s.setAttribute("editList",ls);
		s.setAttribute("searchList",ls1);
		response.sendRedirect("admin/editCity.jsp");
		
	}


	private void search(HttpServletRequest request, HttpServletResponse response) throws IOException {
		CityVO cityVO = new  CityVO();
		CityDAO citydaoobj = new CityDAO();
		List ls = citydaoobj.search(cityVO);

		HttpSession session = request.getSession();
		session.setAttribute("searchList", ls);

		response.sendRedirect("admin/viewCity.jsp");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String flag = request.getParameter("flag");

		if (flag.equals("insert")) {
			insert(request, response);
		}
		else if(flag.equals("update"))
		{
		update(request, response);
		}
	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		int stateId = Integer.parseInt(request.getParameter("stateName"));		
		StateVO stateVO = new StateVO();
		stateVO.setStateId(stateId);
		
		int cityId=Integer.parseInt(request.getParameter("cityId"));
		String cityName=request.getParameter("cityName");
		String cityDescription=request.getParameter("cityDescription");
		
		CityVO cityvoobj=new CityVO();
		cityvoobj.setCityId(cityId);
		cityvoobj.setCityName(cityName);			
		cityvoobj.setCityDescription(cityDescription);
		cityvoobj.setStateVO(stateVO);	
		
		CityDAO citydaoobj=new CityDAO();
		citydaoobj.update(cityvoobj);
		
		search(request, response);
		
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String cityName = request.getParameter("cityName");
		String cityDescription = request.getParameter("cityDescription");
		
		int stateId = Integer.parseInt(request.getParameter("stateName"));		
		StateVO stateVO = new StateVO();
		stateVO.setStateId(stateId);
		
		
		CityVO cityvoobj = new CityVO();
		cityvoobj.setCityName(cityName);
		cityvoobj.setCityDescription(cityDescription);
		cityvoobj.setStateVO(stateVO);	
		cityvoobj.setDeleteStatus("Active");

		CityDAO citydaoobj = new CityDAO();
		citydaoobj.insert(cityvoobj);

		response.sendRedirect("admin/addCity.jsp");
	}

}
