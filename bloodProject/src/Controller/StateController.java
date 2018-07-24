package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.CityDAO;
import DAO.StateDAO;
import VO.CityVO;
import VO.StateVO;

/**
 * Servlet implementation class StateController
 */
@WebServlet("/StateController")
public class StateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag=request.getParameter("flag");
		
		if(flag.equals("search"))
		{
		search(request, response);
		}
		
		else if(flag.equals("edit"))
		{
			System.out.println("in flag edit");
		edit(request, response);
		}
		else if (flag.equals("delete")) {
			System.out.println("delete flagg");
			delete(request, response);
			search(request, response);
		}
	}	
	private void delete(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		int stateId=Integer.parseInt(request.getParameter("id"));
		  System.out.println("sid>>>>>>>>>>>>>"+stateId);
		
		  StateVO statevoobj=new StateVO();
		  statevoobj.setStateId(stateId);	

		StateDAO statedaoobj=new StateDAO();
		statedaoobj.Delete(statevoobj);
	}
	

	private void edit(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("in controller edit method");
		
		int stateId=Integer.parseInt(request.getParameter("id"));
		System.out.println(stateId);
		
		StateVO statevoobj=new StateVO();
		statevoobj.setStateId(stateId);;	

		StateDAO statedaoobj=new StateDAO();
		List ls=statedaoobj.edit(statevoobj);
		
		HttpSession s=request.getSession();
		s.setAttribute("editList",ls);
		response.sendRedirect("admin/editState.jsp");
		
	}

	private void search(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		System.out.println("srch mthd");
		StateDAO statedaoobj=new StateDAO();
		List ls=statedaoobj.search();
		
		HttpSession session=request.getSession();
		session.setAttribute("searchList",ls);
		
		response.sendRedirect("admin/viewState.jsp");
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String flag=request.getParameter("flag");
		
		if(flag.equals("insert"))
		{
		insert(request, response);
		}
		if(flag.equals("update"))
		{
		update(request, response);
		}
	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		int stateId=Integer.parseInt(request.getParameter("stateId"));
		String stateName=request.getParameter("stateName");
		String stateDescription=request.getParameter("stateDescription");
		
		StateVO statevoobj=new StateVO();
		statevoobj.setStateId(stateId);
		statevoobj.setStateName(stateName);			
		statevoobj.setStateDescription(stateDescription);
		
		
		StateDAO statedaoobj=new StateDAO();
		statedaoobj.update(statevoobj);
		
		search(request, response);
		
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		

		String stateName=request.getParameter("stateName");
		String stateDescription=request.getParameter("stateDescription");
		
		StateVO statevoobj=new StateVO();
		statevoobj.setStateName(stateName);			
		statevoobj.setStateDescription(stateDescription);
		
		StateDAO statedaoobj=new StateDAO();
		statedaoobj.insert(statevoobj);

		response.sendRedirect("admin/addState.jsp");
		
	}

}
