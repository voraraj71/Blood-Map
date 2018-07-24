package Controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.ComplaintDAO;
import DAO.StateDAO;
import VO.ComplaintVO;
import VO.LoginVO;
import VO.StateVO;

/**
 * Servlet implementation class complaintController
 */
@WebServlet("/ComplaintController")
public class ComplaintController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ComplaintController() {
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
		if(flag.equals("edit"))
		{
			System.out.println("in flag edit");
		edit(request, response);
		}
	}

	private void edit(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
System.out.println("in controller edit method");
		
		int complaintId=Integer.parseInt(request.getParameter("id"));
		System.out.println(complaintId);
		
		ComplaintVO complaintvoobj=new ComplaintVO();
		complaintvoobj.setComplaintId(complaintId);	

		ComplaintDAO complaintdaoobj=new ComplaintDAO();
		List ls=complaintdaoobj.edit(complaintvoobj);
		
		HttpSession s=request.getSession();
		s.setAttribute("editList",ls);
		response.sendRedirect("admin/editComplaint.jsp");
		

	}

	private void search(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		ComplaintDAO complaintdaoobj=new ComplaintDAO();
		List ls=complaintdaoobj.search();
		
		HttpSession session=request.getSession();
		session.setAttribute("searchList",ls);
		
		response.sendRedirect("admin/viewComplaint.jsp");
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
		if(flag.equals("reply"))
		{
		reply(request,response);
		}
	}

	private void reply(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub

		String title=request.getParameter("title");
		String complaint=request.getParameter("complaint");
		String reply=request.getParameter("reply");
		
		int complaintId=Integer.parseInt(request.getParameter("complaintId"));
		int complaintFromId=Integer.parseInt(request.getParameter("complaintFrom"));
		int complaintToId=Integer.parseInt(request.getParameter("complaintTo"));
		
		LoginVO loginVO_from = new LoginVO();
		loginVO_from.setLoginId(complaintFromId);
		
		LoginVO complainToVO = new LoginVO();
		complainToVO.setLoginId(complaintToId);
		
		
		
		DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
		Date dateobj = new Date();
		String complaintDate = df.format(dateobj);
		
		DateFormat df1 = new SimpleDateFormat("HH:mm:ss");
		Date timeobj = new Date();
		String complaintTime=df1.format(timeobj);
		
		ComplaintVO complaintvoobj=new ComplaintVO();
		complaintvoobj.setComplaintId(complaintId);
		complaintvoobj.setTitle(title);		
		complaintvoobj.setComplaint(complaint);
		complaintvoobj.setReply(reply);
		complaintvoobj.setComplaintDate(complaintDate);
		complaintvoobj.setComplaintTime(complaintTime);
		complaintvoobj.setComplaintStatus("Replied");
		complaintvoobj.setLoginVOFrom(loginVO_from);
		complaintvoobj.setLoginVOTo(complainToVO);
		
		ComplaintDAO complaintdaoobj=new ComplaintDAO();
		complaintdaoobj.reply(complaintvoobj);
		
		search(request, response);
		

	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		Integer id = (Integer)session.getAttribute("userID");
		System.out.println("ID>>>>>>"+id);
		LoginVO loginVO_from = new LoginVO();
		loginVO_from.setLoginId(id);
		
		
		
		String title=request.getParameter("title");
		String complaint=request.getParameter("complaint");
		
		
		DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
		Date dateobj = new Date();
		String complaintDate = df.format(dateobj);
		
		DateFormat df1 = new SimpleDateFormat("HH:mm:ss");
		Date timeobj = new Date();
		String complaintTime=df1.format(timeobj);

		ComplaintDAO complaintdaoobj=new ComplaintDAO();
		List <LoginVO> ls = complaintdaoobj.searchAdmin();
		
		LoginVO complainTo = (LoginVO)ls.get(0);
		
		
		
		ComplaintVO complaintvoobj=new ComplaintVO();
		complaintvoobj.setTitle(title);		
		complaintvoobj.setComplaint(complaint);
	
		complaintvoobj.setComplaintDate(complaintDate);
		complaintvoobj.setComplaintTime(complaintTime);
		complaintvoobj.setComplaintStatus("Pending");
		complaintvoobj.setLoginVOFrom(loginVO_from);
		complaintvoobj.setLoginVOTo(complainTo);
		complaintdaoobj.insert(complaintvoobj);

		response.sendRedirect("user/addComplaint.jsp");
	}

}
