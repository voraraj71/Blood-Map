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
import DAO.LoginDAO;
import DAO.RegOrgDAO;
import DAO.StateDAO;
import VO.CityVO;
import VO.LoginVO;
import VO.RegOrgVO;
import VO.StateVO;

/**
 * Servlet implementation class RegOrgController
 */
@WebServlet("/RegOrgController")
public class RegOrgController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegOrgController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String flag=request.getParameter("flag");
		if (flag.equals("loadState")) {
			loadState(request, response);
			System.out.println("loadstate flag");
		}
		
	}
	
	private void loadState(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		System.out.println("loadstate method");
		
		StateDAO statedaoobj=new StateDAO();
		List ls=statedaoobj.search();
		
		HttpSession session=request.getSession();
		session.setAttribute("stateList",ls);
		
		CityVO cityVO = new  CityVO();
		CityDAO citydaoobj = new CityDAO();
		List ls1 = citydaoobj.search(cityVO);

		session.setAttribute("cityList", ls1);
		
		System.out.println("stateList>>>>>>>>>>>"+ls.size());
		System.out.println("cityList>>>>>>>>>>>"+ls1.size());
		
		response.sendRedirect("Organisation/orgRegistration.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String flag=request.getParameter("flag");
		
		if(flag.equals("insert"))
		{
			insert(request,response);	
		}
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		System.out.println("insert flag");
		String orgname=request.getParameter("orgName");
		String username=request.getParameter("userName");
		String password=request.getParameter("password");
		String contactno=request.getParameter("contact");
		String address=request.getParameter("address");
		String email=request.getParameter("email");
		Float latitude=Float.parseFloat(request.getParameter("latitude"));
		Float longitude=Float.parseFloat(request.getParameter("longitude"));
		
		int stateId = Integer.parseInt(request.getParameter("stateName"));
		System.out.println("sid------"+stateId);
		StateVO stateVO = new StateVO();
		stateVO.setStateId(stateId);
		
		int cityId = Integer.parseInt(request.getParameter("cityName"));
		System.out.println("cid----------"+cityId);
		CityVO cityVO = new CityVO();
		cityVO.setCityId(cityId);
		
		LoginVO loginvo=new LoginVO();
		loginvo.setUserName(username);
		loginvo.setPassword(password);
		loginvo.setUserType("organisation");
		
		LoginDAO logindao=new LoginDAO();
		logindao.insert(loginvo);
		
		RegOrgVO regorgvo=new RegOrgVO();
		regorgvo.setOrgname(orgname);
		regorgvo.setLoginvo(loginvo);
		regorgvo.setAddress(address);
		regorgvo.setCityVO(cityVO);
		regorgvo.setStateVO(stateVO);
		regorgvo.setContactno(contactno);
		regorgvo.setEmail(email);
		regorgvo.setLatitude(latitude);
		regorgvo.setLongitude(longitude);
		
		RegOrgDAO regorgdao=new RegOrgDAO();
		regorgdao.insert(regorgvo);
		
		response.sendRedirect("Organisation/orgRegistration.jsp");
	}

}
