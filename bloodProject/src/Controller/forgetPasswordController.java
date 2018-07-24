package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Random;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import DAO.LoginDAO;
import VO.LoginVO;

/**
 * Servlet implementation class forgetPasswordController
 */
@WebServlet("/forgetPasswordController")
public class forgetPasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public forgetPasswordController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag=request.getParameter("flag");
		if(flag.equals("step1"))
		{
			step1(request,response);
		}
		else if(flag.equals("step2"))
		{
			step2(request,response);
		}
	}

	private void step2(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		String newPassword = request.getParameter("newPassword");
		String conformPassword = request.getParameter("conformpassword");
		
		String emailId= (String) request.getSession().getAttribute("email11");
		
		System.out.println("email11 IN step-2>>>>>>>>>>>>>>>>>>>>>>>>>>"+emailId);
		LoginVO lVO=new LoginVO();
		lVO.setUserName(emailId);
		lVO.setPassword(newPassword);
		
		if(newPassword.equals(conformPassword))
		{
			System.out.println("match");
			LoginDAO LoginDao=new LoginDAO();
			LoginDao.Step2(lVO);
			response.sendRedirect("user/login.jsp");
		}
		else 
		{
			response.sendRedirect("user/step2.jsp");
		}
		
		
	}

	private void step1(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub"
		
		String email=request.getParameter("email");
		System.out.println("email"+email);
		LoginVO loginVO=new LoginVO();
		loginVO.setUserName(email);
		
		LoginDAO loginDAO=new LoginDAO();
		List ls=loginDAO.step1(loginVO);
		
		HttpSession session=request.getSession();
		session.setAttribute("list",ls);
		session.setAttribute("email11",email);
		
		 if(ls != null && ls.size()>=1)
		 {
		 int otp11 = generateOTP(5);
		 sendMail(email, otp11);
		 session.setAttribute("generatedOTP" , otp11);
		response.sendRedirect("user/step2.jsp");
	     }
		 else
		 {
		response.sendRedirect("user/login.jsp");
	     }
		 }
	public int generateOTP(int limit) {

        int otp = 0;

        if (limit > 5 || limit < 1)
            limit = 3;

        for (int i = 0; i < limit; i++) {

            int x = new Random().nextInt(9);

            if (x == 0 && i == 0)
                i--;
            else
                otp = (otp * 10) + x;
        }
     //   OTP=otp;
        return otp;
    }
	protected void sendMail(String email,int OTP){
		
			java.util.Properties properties = new java.util.Properties();
	        properties.put("mail.smtp.auth", "true");
	         properties.put("mail.smtp.starttls.enable", "true");
	         javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);

	        try {
	        	
	            MimeMessage message = new MimeMessage(mailSession);
	            message.setContent("<h1>This is your OTP "+OTP+" Code</h1>","text/html" );
	            message.setSubject("OTP for Forgot password");
	            
	            InternetAddress sender = new InternetAddress("niralisharma113@gmail.com","Mail");
	            InternetAddress receiver = new InternetAddress(email);
	            message.setFrom(sender);
	            message.setRecipient(Message.RecipientType.TO, receiver);
	             message.saveChanges();
	            
	            javax.mail.Transport transport = mailSession.getTransport("smtp");
	            transport.connect("smtp.gmail.com", 587, "niralisharma113@gmail.com","9537553743");
	             transport.sendMessage(message, message.getAllRecipients());
	            transport.close();
	                      
	        } catch (Exception e) {
	            e.printStackTrace();
	         }
			
		}	
	}

	

