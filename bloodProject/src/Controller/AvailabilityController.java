package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.AvailabilityDAO;
import DAO.BloodtypeDAO;
import DAO.LoginDAO;
import VO.AvailabilityVO;
import VO.BloodtypeVO;
import VO.LoginVO;

/**
 * Servlet implementation class AvailabilityController
 */
@WebServlet("/AvailabilityController")
public class AvailabilityController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AvailabilityController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String flag = request.getParameter("flag");
		if (flag.equals("search")) {
			System.out.println("flag search");
			search(request, response);	
		}
		if (flag.equals("loadAvailability")) {
			loadAvailability(request, response);
		}
		if (flag.equals("edit")) {
			edit(request, response);	
		}
	}

	private void edit(HttpServletRequest request, HttpServletResponse response) throws IOException {
System.out.println("in controller edit method");
		
		int availabilityId=Integer.parseInt(request.getParameter("id"));
		System.out.println(availabilityId); 
		
		AvailabilityVO availabilityvoobj=new AvailabilityVO();
		availabilityvoobj.setAvailabilityId(availabilityId);
		  
		AvailabilityDAO availabilitydaoobj=new AvailabilityDAO();
		List ls=availabilitydaoobj.edit(availabilityvoobj);
		
		BloodtypeDAO bloodtypedaoobj=new BloodtypeDAO();
		List ls1=bloodtypedaoobj.search();
		
		HttpSession s=request.getSession();
		s.setAttribute("editList",ls);
		s.setAttribute("searchList",ls1);
		System.out.println(">>>>>>>>>>"+ls1.size());
		response.sendRedirect("Organisation/editAvailability.jsp");
		
	}

	private void loadAvailability(HttpServletRequest request, HttpServletResponse response) throws IOException {
		BloodtypeDAO bloodtypedaoobj = new BloodtypeDAO();
		List ls = bloodtypedaoobj.search();

		HttpSession session = request.getSession();
		session.setAttribute("searchAvailabilitylist",ls);

		response.sendRedirect("Organisation/addAvailability.jsp");

		
	}

	private void search(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("con. search");
		
		AvailabilityVO availabilityVO = new AvailabilityVO();
		AvailabilityDAO availabilitydaoobj = new AvailabilityDAO();
		List ls = availabilitydaoobj.search(availabilityVO);

		HttpSession session = request.getSession();
		session.setAttribute("searchAvailabilityList",ls);

		response.sendRedirect("Organisation/viewAvailability.jsp");

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
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
	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws IOException {
			System.out.println("update con.");
			
			int bloodtypeId=Integer.parseInt(request.getParameter("bloodType"));
			System.out.println(bloodtypeId);
			BloodtypeVO bloodtypeVO=new BloodtypeVO();
			bloodtypeVO.setBloodtypeId(bloodtypeId);
			
			int availabilityId = Integer.parseInt(request.getParameter("availabilityId"));
			String amount=request.getParameter("amount");
			String username=request.getParameter("userName");
			String password=request.getParameter("password");
			
			LoginVO loginvo=new LoginVO();
			loginvo.setUserName(username);
			loginvo.setPassword(password);
			loginvo.setUserType("organisation");
			
			LoginDAO logindao=new LoginDAO();
			logindao.insert(loginvo);
			
			
			AvailabilityVO availabilityvoobj=new AvailabilityVO();
			availabilityvoobj.setAvailabilityId(availabilityId);
			availabilityvoobj.setAmount(amount);
			availabilityvoobj.setBloodtypeVO(bloodtypeVO);
			availabilityvoobj.setLoginvo(loginvo);;
			
			
			AvailabilityDAO availabilitydaoobj=new AvailabilityDAO();
			availabilitydaoobj.update(availabilityvoobj);
			
			search(request, response);
	}


	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("con.insert");
				
		int bloodTypeId=Integer.parseInt(request.getParameter("bloodType"));
		String amount=request.getParameter("amount");
		String username=request.getParameter("userName");
		String password=request.getParameter("password");
		
		LoginVO loginvo=new LoginVO();
		loginvo.setUserName(username);
		loginvo.setPassword(password);
		loginvo.setUserType("organisation");
		
		LoginDAO logindao=new LoginDAO();
		logindao.insert(loginvo);
		
		BloodtypeVO bloodtypeVO = new BloodtypeVO();
		bloodtypeVO.setBloodtypeId(bloodTypeId);
		
		AvailabilityVO availabilityvoobj=new AvailabilityVO();
		availabilityvoobj.setAmount(amount);
		availabilityvoobj.setBloodtypeVO(bloodtypeVO);
		availabilityvoobj.setLoginvo(loginvo);;
		
		AvailabilityDAO availabilitydaoobj=new AvailabilityDAO();
		availabilitydaoobj.insert(availabilityvoobj);

		response.sendRedirect("Organisation/addAvailability.jsp");
	}

}
