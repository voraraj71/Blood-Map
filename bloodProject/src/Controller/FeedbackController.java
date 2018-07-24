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

import DAO.FeedbackDAO;
import VO.FeedbackVO;
import VO.LoginVO;

/**
 * Servlet implementation class FeedbackController
 */
@WebServlet("/FeedbackController")
public class FeedbackController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FeedbackController() {
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
	}

	private void search(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		System.out.println("srch mthd");
		FeedbackDAO feedbackdaoobj=new FeedbackDAO();

		List ls=feedbackdaoobj.search();
		
		HttpSession session=request.getSession();
		session.setAttribute("searchList",ls);
		
		response.sendRedirect("admin/viewFeedback.jsp");
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
		
	}


	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		Integer id = (Integer)session.getAttribute("userID");
		System.out.println("ID>>>>>>"+id);
		LoginVO loginVO_from = new LoginVO();
		loginVO_from.setLoginId(id);
		
		
		String title=request.getParameter("title");
		String feedback=request.getParameter("feedback");
		
		DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
		Date dateobj = new Date();
		String feedbackDate = df.format(dateobj);
		
		DateFormat df1 = new SimpleDateFormat("HH:mm:ss");
		Date timeobj = new Date();
		String feedbackTime=df1.format(timeobj);
		
		FeedbackVO feedbackvoobj=new FeedbackVO();
		feedbackvoobj.setTitle(title);		
		feedbackvoobj.setFeedback(feedback);
		feedbackvoobj.setFeedbackDate(feedbackDate);
		feedbackvoobj.setFeedbackTime(feedbackTime);
		feedbackvoobj.setLoginVOFrom(loginVO_from);
		
		FeedbackDAO feedbackdaoobj=new FeedbackDAO();
		feedbackdaoobj.insert(feedbackvoobj);

		response.sendRedirect("user/addFeedback.jsp");

	}

}
