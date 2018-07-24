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
import DAO.EventDAO;
import DAO.StateDAO;
import VO.CityVO;
import VO.EventVO;
import VO.StateVO;


@WebServlet("/EventController")
public class EventController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public EventController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String flag = request.getParameter("flag");
		if (flag.equals("search")) {
			System.out.println("flag search");
			search(request, response);	
		}
		if (flag.equals("load")) {
			load(request, response);
		}
		if(flag.equals("edit"))
		{
			System.out.println("in flag edit");
		edit(request, response);
		}
		else if (flag.equals("loadCity"))
		{
			loadCity(request, response);
		}
		
	}

	private void loadCity(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int stateId=Integer.parseInt(request.getParameter("stateID"));
		System.out.println("in event controller>>>>>>>>>>>>>>>>>>>>>>>>>>>");
	    
		System.out.println("stateID>>>>>>>>>>>>>"+stateId);
		StateVO stateVO = new StateVO();
		stateVO.setStateId(stateId);
	
		CityVO  cityVO = new CityVO(); 
		cityVO.setStateVO(stateVO);
				
		EventDAO eventdaoobj = new EventDAO() ;
		List ls= eventdaoobj.loadCity(cityVO);
		
		HttpSession session=request.getSession();
	    session.setAttribute("cityList",ls);
	    
	    System.out.println("cityList>>>>>>>>>>>>>>>>>>>>"+ls.size());
	    
		response.sendRedirect("Organisation/loadCityJSON.jsp");
	}

	private void edit(HttpServletRequest request, HttpServletResponse response) throws IOException {
System.out.println("in controller edit method");
		
		int eventId=Integer.parseInt(request.getParameter("id"));
		System.out.println(eventId); 
		EventVO eventvoobj=new EventVO();
		eventvoobj.setEventId(eventId);	

		EventDAO eventdaoobj=new EventDAO();
		List ls=eventdaoobj.edit(eventvoobj);
		System.out.println(ls.size());
		
		CityVO cityVO = new  CityVO();
		
		CityDAO citydaoobj = new CityDAO();
		List ls1 = citydaoobj.search(cityVO);
		System.out.println(ls1.size());

		StateDAO statedaoobj = new StateDAO();
        List ls2 = statedaoobj.search();
        System.out.println(ls2.size());
        
		HttpSession session=request.getSession();
		session.setAttribute("editEventList",ls);
		session.setAttribute("editCityList",ls1);
		session.setAttribute("editStateList",ls2);
		
		response.sendRedirect("Organisation/editEvent.jsp");
	}

	private void load(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		StateDAO statedaoobj = new StateDAO();
		List ls = statedaoobj.search();

		CityVO cityVO = new  CityVO();
		CityDAO citydaoobj = new CityDAO();
		List ls1 =citydaoobj.search(cityVO);
		
		HttpSession session = request.getSession();
		session.setAttribute("stateList",ls);
		session.setAttribute("cityList",ls1);
		
		response.sendRedirect("Organisation/addEvent.jsp");
		
		
	}

	private void search(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		EventDAO eventdaoobj = new EventDAO();		
		List ls = eventdaoobj.search();
       
        HttpSession session = request.getSession();
		session.setAttribute("searchEventList",ls);
		
		response.sendRedirect("Organisation/viewEvent.jsp");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String flag = request.getParameter("flag");

		if (flag.equals("insert")) {
			System.out.println("flag insert");
			insert(request, response);
		}
		if(flag.equals("update"))
		{
		update(request, response);
		}
		if(flag.equals("search"))
		{
			search(request, response);
		}
}		
	private void update(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		int stateId = Integer.parseInt(request.getParameter("stateName"));
		StateVO stateVO = new StateVO();
		stateVO.setStateId(stateId);
		
		int cityId = Integer.parseInt(request.getParameter("cityName"));
		CityVO cityVO = new CityVO();
		cityVO.setCityId(cityId);

		int eventId = Integer.parseInt(request.getParameter("eventId"));
		String eventname = request.getParameter("eventName");
		String address = request.getParameter("address");
		String eventdescription = request.getParameter("eventDescription");
		String eDate = request.getParameter("eDate");
		String eTime = request.getParameter("eTime");

		EventVO eventvoobj = new EventVO();
		eventvoobj.setEventId(eventId);
		eventvoobj.setEventName(eventname);
		eventvoobj.setAddress(address);
		eventvoobj.setEventDescription(eventdescription);
		eventvoobj.setStateVO(stateVO);
		eventvoobj.setCityVO(cityVO);
		eventvoobj.seteDate(eDate);
		eventvoobj.seteTime(eTime);
		
		EventDAO eventdaoobj = new EventDAO();
		eventdaoobj.update(eventvoobj);

		search(request, response);
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		System.out.println("in con. method insert");
		String address=request.getParameter("address");
		String eventName = request.getParameter("eventName");
		String eventDescription = request.getParameter("eventDescription");
		String eDate = request.getParameter("eDate");
		String eTime = request.getParameter("eTime");
		
		int stateId = Integer.parseInt(request.getParameter("stateName"));
		StateVO stateVO = new StateVO();
		stateVO.setStateId(stateId);
		
		int cityId = Integer.parseInt(request.getParameter("city"));
		CityVO cityVO = new CityVO();
		cityVO.setCityId(cityId);
		
		EventVO eventvoobj = new EventVO();
		eventvoobj.setAddress(address);
		eventvoobj.setEventName(eventName);
		eventvoobj.setEventDescription(eventDescription);
		eventvoobj.seteDate(eDate);
		eventvoobj.seteTime(eTime);
		eventvoobj.setCityVO(cityVO);
		eventvoobj.setStateVO(stateVO);
		
		EventDAO eventdaoobj = new EventDAO();
		eventdaoobj.insert(eventvoobj);

		response.sendRedirect("Organisation/addEvent.jsp");
	}
}
