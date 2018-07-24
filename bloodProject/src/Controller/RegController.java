package Controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.util.List;
import java.util.Random;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import DAO.BloodtypeDAO;
import DAO.LoginDAO;
import DAO.RegDAO;
import DAO.StateDAO;
import VO.BloodproofPhoto;
import VO.BloodtypeVO;
import VO.CityVO;
import VO.FileVO;
import VO.LoginVO;
import VO.RegOrgVO;
import VO.RegVO;
import VO.RequestUserVO;
import VO.StateVO;

/**
 * Servlet implementation class RegController
 */
@WebServlet("/RegController")
@MultipartConfig
public class RegController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String flag=request.getParameter("flag");
		if (flag.equals("loadStateCity")) {
			loadStateCity(request, response);
		}
		else if (flag.equals("loadProfile")) {
			loadProfile(request, response);
		}
		else if (flag.equals("viewUser")) {
			viewUser(request, response);
		}
		else if (flag.equals("userDetails")) {
			userDetails(request, response);
		}
		else if (flag.equals("viewBloodtype")) {
			viewBloodtype(request, response);
		}
		else if (flag.equals("insertReqest")) {
			insertReqest(request, response);
			viewUser(request, response);
		}	
		else if (flag.equals("viewUserRequest")) {
			viewUserRequest(request, response);
		}
		else if (flag.equals("viewUserRequestFromUser")) {
			viewUserRequestFromUser(request, response);
		}
		else if (flag.equals("viewOrg")) {
			
			viewOrg(request, response);
		}
		else if (flag.equals("orgDetails")) {
			System.out.println("org dtls flag");
			orgDetails(request, response);
		}
		else if (flag.equals("acceptUserRequest")) {
			acceptUserRequest(request, response);
			viewUserRequestFromUser(request, response);
		}
		else if (flag.equals("denyUserRequest")) {
			denyUserRequest(request, response);
			viewUserRequestFromUser(request, response);
		}
		else if (flag.equals("UserRequestList")) {
			UserRequestList(request, response);
			
		}
		
	}

	private void UserRequestList(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
int fromUserID = (int) request.getSession().getAttribute("userID");
		
		LoginVO toUser=new LoginVO();
		toUser.setLoginId(fromUserID);
		
		RequestUserVO requestUserVO = new RequestUserVO();
		requestUserVO.setToUser(toUser);
		
		/*String firstname=request.getParameter("firstname");
		String lastname=request.getParameter("lastname");
		
		RegVO regvoobj=new RegVO();
		regvoobj.setFirstname(firstname);
		regvoobj.setLastname(lastname);*/
		
		
		RegDAO regdaoobj = new RegDAO();
		List ls = regdaoobj.viewUser();
		List ls1 = regdaoobj.viewImage();
		List ls2 = regdaoobj.viewUserRequestFromUserList(requestUserVO);

		HttpSession session = request.getSession();
		session.setAttribute("regList",ls);
		session.setAttribute("imgList",ls1);
		session.setAttribute("requestList",ls2);
		System.out.println("req list sizeeeeeeeeee>>>>>>>>>>>>>>>>>>>>>"+ls2.size());
		response.sendRedirect("user/acceptedUserList.jsp");
		
	}

	private void denyUserRequest(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		int loginIdTo=Integer.parseInt(request.getParameter("loginId"));
		
		LoginVO fromUser=new LoginVO();
		fromUser.setLoginId(loginIdTo);
		
		RequestUserVO requestUserVO = new RequestUserVO();
	requestUserVO.setFromUser(fromUser);	
		
	LoginDAO loginDAO = new LoginDAO();
	loginDAO.denyRequest(requestUserVO);
		
	}

	private void acceptUserRequest(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		int fromUserID = (int) request.getSession().getAttribute("userID");
		
int loginIdTo=Integer.parseInt(request.getParameter("loginId"));
		
		LoginVO fromUser=new LoginVO();
		fromUser.setLoginId(loginIdTo);
		
		RequestUserVO requestUserVO = new RequestUserVO();
	requestUserVO.setFromUser(fromUser);	
		
	LoginDAO loginDAO = new LoginDAO();
	loginDAO.acceptRequest(requestUserVO);
		
	List ls = loginDAO.searchEmail(fromUser);
	
	LoginVO lvo= (LoginVO) ls.get(0);
	String email= lvo.getUserName();
	
	
	LoginVO regLoginVO = new LoginVO();
	regLoginVO.setLoginId(fromUserID);
	
	
	RegVO regVO = new RegVO();
	regVO.setLoginvo(regLoginVO);
	
	RegDAO regdaoobj = new RegDAO();
	List namels = regdaoobj.searchName(regVO);
	
	RegVO nVO = (RegVO) namels.get(0);
	
	String fn = nVO.getFirstname();
	String ln = nVO.getLastname();
	
	sendMailReqst(email,fn,ln);
	
	}

	
	protected void sendMailReqst(String email,String fn,String ln){
		
		java.util.Properties properties = new java.util.Properties();
        properties.put("mail.smtp.auth", "true");
         properties.put("mail.smtp.starttls.enable", "true");
         javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);

        try {
        	
            MimeMessage message = new MimeMessage(mailSession);
            message.setContent("<h1> your Request Accepted By"+fn+""+ln+" Code</h1>","text/html" );
            message.setSubject("Accepted Blood Request");
            
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
	
	
	private void orgDetails(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		System.out.println("org mthd");
		int id = Integer.parseInt(request.getParameter("rId"));
		System.out.println("iddddddddddd"+id);
		RegOrgVO regvo=new RegOrgVO();
		regvo.setRegOrgId(id);
		
		RegDAO regdaoobj = new RegDAO();
		List ls= regdaoobj.searchOrgDetails(regvo);

		HttpSession session = request.getSession();
		session.setAttribute("orgList",ls);
		
		System.out.println("List Size>>>>>>>>>>>>>"+ls.size());
		
		response.sendRedirect("user/orgDetails.jsp");

		
	}

	private void viewUserRequestFromUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		int fromUserID = (int) request.getSession().getAttribute("userID");
		
		LoginVO toUser=new LoginVO();
		toUser.setLoginId(fromUserID);
		
		RequestUserVO requestUserVO = new RequestUserVO();
		requestUserVO.setToUser(toUser);
		
		/*String firstname=request.getParameter("firstname");
		String lastname=request.getParameter("lastname");
		
		RegVO regvoobj=new RegVO();
		regvoobj.setFirstname(firstname);
		regvoobj.setLastname(lastname);*/
		
		
		RegDAO regdaoobj = new RegDAO();
		List ls = regdaoobj.viewUser();
		List ls1 = regdaoobj.viewImage();
		List ls2 = regdaoobj.viewUserRequestFromUser(requestUserVO);

		HttpSession session = request.getSession();
		session.setAttribute("regList",ls);
		session.setAttribute("imgList",ls1);
		session.setAttribute("requestList",ls2);
		System.out.println("req list sizeeeeeeeeee>>>>>>>>>>>>>>>>>>>>>"+ls2.size());
		response.sendRedirect("user/viewRequest.jsp");
		
	}

	private void viewUserRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		int fromUserID = (int) request.getSession().getAttribute("userID");
		LoginVO fromUser=new LoginVO();
		fromUser.setLoginId(fromUserID);
		
		RequestUserVO requestUserVO = new RequestUserVO();
		requestUserVO.setFromUser(fromUser);
		
		String firstname=request.getParameter("firstname");
		String lastname=request.getParameter("lastname");
		
		RegVO regvoobj=new RegVO();
		regvoobj.setFirstname(firstname);
		regvoobj.setLastname(lastname);
		
		
		RegDAO regdaoobj = new RegDAO();
		List ls = regdaoobj.viewUser();
		List ls1 = regdaoobj.viewImage();
		List ls2 = regdaoobj.viewUserRequest(requestUserVO);

		HttpSession session = request.getSession();
		session.setAttribute("regList",ls);
		session.setAttribute("imgList",ls1);
		session.setAttribute("requestList",ls2);
		System.out.println("req list sizeeeeeeeeee>>>>>>>>>>>>>>>>>>>>>"+ls2.size());
		response.sendRedirect("user/SentRequest.jsp");
	}

	private void insertReqest(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		int loginIdTo=Integer.parseInt(request.getParameter("loginId"));
	
		int fromUserID = (int) request.getSession().getAttribute("userID");
		
		/*for Email aaddress*/
		LoginVO loginVO = new LoginVO();
		loginVO.setLoginId(loginIdTo);
		
		RegDAO regdaoobj = new RegDAO();
		List ls = regdaoobj.searchUserNAme(loginVO); 
		
		LoginVO lVO = (LoginVO) ls.get(0);
		String email = lVO.getUserName();

		/*for First Name Lastname*/
		
		LoginVO regLoginVO = new LoginVO();
		regLoginVO.setLoginId(fromUserID);
		
		
		RegVO regVO = new RegVO();
		regVO.setLoginvo(regLoginVO);
		
		List namels = regdaoobj.searchName(regVO);
		
		RegVO nVO = (RegVO) namels.get(0);
		
		String fn = nVO.getFirstname();
		String ln = nVO.getLastname();
		
		sendMail(email,fn,ln);
		
		
		
		System.out.println("loginIdTo>>>>>>>>>>>>>>>>>>>>"+loginIdTo);
		System.out.println("fromUserID>>>>>>>>>>>>>>>>>>>>"+fromUserID);
		
		LoginVO fromUser=new LoginVO();
		fromUser.setLoginId(fromUserID);
		
		LoginVO toUser=new LoginVO();
		toUser.setLoginId(loginIdTo);
		
		RequestUserVO requestUserVO = new RequestUserVO();
		requestUserVO.setDeleteStatus("Active");
		requestUserVO.setFromUser(fromUser);
		requestUserVO.setToUser(toUser);
		
		regdaoobj.insertRequest(requestUserVO);
		
	}

	
	protected void sendMail(String email,String fn,String ln){
		
		java.util.Properties properties = new java.util.Properties();
        properties.put("mail.smtp.auth", "true");
         properties.put("mail.smtp.starttls.enable", "true");
         javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);

        try {
        	
            MimeMessage message = new MimeMessage(mailSession);
            message.setContent("<h1>request from"+fn+""+ln+"  </h1>","text/html" );
            message.setSubject("Blood request");
            
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
	
	
	
	
	
	private void viewBloodtype(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int BloodtypeId=Integer.parseInt(request.getParameter("Id"));
		  System.out.println(BloodtypeId);
		
		BloodtypeVO Bloodtypevoobj=new BloodtypeVO();
		Bloodtypevoobj.setBloodtypeId(BloodtypeId);;
		
		RegVO regVO = new RegVO();
		regVO.setBloodtypeVO(Bloodtypevoobj);
		
		RegDAO regdaoobj = new RegDAO();
		List ls = regdaoobj.viewUserByBloodGroup(regVO);
		List ls1 = regdaoobj.viewImage();

		HttpSession session = request.getSession();
		session.setAttribute("regList",ls);
		session.setAttribute("imgList",ls1);
		
		response.sendRedirect("user/viewUser.jsp");
		
	}

	private void userDetails(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		int id = Integer.parseInt(request.getParameter("rId"));
		RegVO regvo=new RegVO();
		regvo.setRegId(id);
		
		FileVO fileVO = new FileVO();
		fileVO.setRegvo(regvo);
		
		RegDAO regdaoobj = new RegDAO();
		List ls1 = regdaoobj.viewImagebyDetail(fileVO);

		HttpSession session = request.getSession();
		session.setAttribute("imgList",ls1);
		
		System.out.println("List Size>>>>>>>>>>>>>"+ls1.size());
		
		
		BloodtypeDAO bloodtypedaoobj = new BloodtypeDAO();
		List ls = bloodtypedaoobj.search();

		session.setAttribute("bloodSearchList", ls);
		
		
		response.sendRedirect("user/userDetails.jsp");
	}

	
	private void viewUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		RegDAO regdaoobj = new RegDAO();
		List ls = regdaoobj.viewUser();
		List ls1 = regdaoobj.viewImage();

		HttpSession session = request.getSession();
		session.setAttribute("regList",ls);
		session.setAttribute("imgList",ls1);
		
		int loginId=(int) request.getSession().getAttribute("userID");
		
        LoginVO loginVO = new LoginVO();
        loginVO.setLoginId(loginId);
		
		List ls2 = regdaoobj.searchById(loginVO);
			
		session.setAttribute("userList",ls2);

		System.out.println("userList>>>>>>>>>>>>>>>"+ls2.size());
		System.out.println("imgList>>>>>>>>>>>>>>>>>>>>>>>"+ls1.size());
		System.out.println("regList>>>>>>>>>>>>>>>>>>>>>>>>>>>"+ls.size());
		
		
		response.sendRedirect("user/viewUser.jsp");
		
	}

	
	

	private void viewOrg(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		System.out.println("org methd");
		RegDAO regdaoobj = new RegDAO();
		List ls = regdaoobj.viewOrg();

		HttpSession session = request.getSession();
		session.setAttribute("orgList",ls);
		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>"+ls.size());
		
		int loginId=(int) request.getSession().getAttribute("userID");
		
        LoginVO loginVO = new LoginVO();
        loginVO.setLoginId(loginId);
		
		List ls1= regdaoobj.searchById(loginVO);
			
		session.setAttribute("userList",ls1);
		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>"+ls1.size());
		
		response.sendRedirect("user/viewOrg.jsp");
		
	}



	private void loadProfile(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub

		int id = (int)request.getSession().getAttribute("userID");
		LoginVO loginVO = new LoginVO();
		loginVO.setLoginId(id);
		
		RegVO regvo=new RegVO();
		regvo.setLoginvo(loginVO);
		
		RegDAO regdao=new RegDAO();
		List ls2= regdao.SearchUser(regvo);
		
		HttpSession session = request.getSession();
		session.setAttribute("profileList",ls2);
		
		StateDAO statedaoobj = new StateDAO();
		List ls = statedaoobj.search();
		
		BloodtypeDAO bloodtypedaoobj = new BloodtypeDAO();
		List ls1 = bloodtypedaoobj.search();

		session.setAttribute("searchState",ls);
		session.setAttribute("searchAvailabilitylist",ls1);
		
		response.sendRedirect("user/myProfile.jsp");
		
	}

	private void loadStateCity(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		StateDAO statedaoobj = new StateDAO();
		List ls = statedaoobj.search();
		
		BloodtypeDAO bloodtypedaoobj = new BloodtypeDAO();
		List ls1 = bloodtypedaoobj.search();

		HttpSession session = request.getSession();
		session.setAttribute("searchState",ls);
		session.setAttribute("searchAvailabilitylist",ls1);
		
		response.sendRedirect("user/registration.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String flag=request.getParameter("flag");
		
		if(flag.equals("insert"))
		{
			insert(request,response);
			response.sendRedirect("user/registration.jsp");			
		}
		else if(flag.equals("update"))
		{
			System.out.println("update flag");
		update(request, response);
		}
		else if(flag.equals("insertBloodPhoto"))
		{
			try {
				insertBloodPhoto(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

	private void insertBloodPhoto(HttpServletRequest request, HttpServletResponse response) throws Exception, IOException, ServletException {
		// TODO Auto-generated method stub
		
		int logiId = (int) request.getSession().getAttribute("userID");
			LoginVO loginVO = new LoginVO();
			loginVO.setLoginId(logiId);

			RegDAO regdao=new RegDAO();
			
			for(Part filePart : request.getParts())
			{
				if(filePart.getSubmittedFileName()!=null && !filePart.getSubmittedFileName().equals(""))
				{
					String fileName = filePart.getSubmittedFileName();
					InputStream fileContent = filePart.getInputStream();
					// ... (do your job here)

					byte[] buffer = new byte[fileContent.available()];
					fileContent.read(buffer);

					String filePath = getServletContext().getRealPath(request.getServletPath());

					System.out.println("filepath :: "+filePath);

					int path = filePath.lastIndexOf('\\');
					String path1= filePath.substring(0, path) + "/doc/";
					System.out.println("XC");

					/*File targetFile = new File(path1+fileName);
					OutputStream outStream = new FileOutputStream(targetFile);
					outStream.write(buffer);*/

					//uncomment this if you want to encrypt name of file n comment above 3 line
					String encryptedFileName=encryptFileName(fileName);
					File targetEncryptFile = new File(path1+encryptedFileName);

					OutputStream outStream = new FileOutputStream(targetEncryptFile);
					outStream.write(buffer);

					System.out.println("File Output Path :: "+path1+fileName);

					outStream.close();

					BloodproofPhoto VO=new BloodproofPhoto();
					VO.setFileName(fileName);
					VO.setEncryptedFileName(encryptedFileName);
					VO.setLoginVO(loginVO);
				
					regdao.insertAttachment(VO);
					
					response.sendRedirect("user/uploadPhoto.jsp");

				}
			}
		
	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		System.out.println("update method con");
		int regId=Integer.parseInt(request.getParameter("regId"));
		System.out.println("reg iddddd"+regId);
		int loginId=Integer.parseInt(request.getParameter("loginId"));
		System.out.println("login idddddd"+loginId);
		
		String firstname=request.getParameter("firstname");
		System.out.println(firstname);
		String lastname=request.getParameter("lastname");
		System.out.println(lastname);
		/*String username=request.getParameter("username");
		String password=request.getParameter("password");*/
		String gender=request.getParameter("radio");
		System.out.println(gender);
		String dob=request.getParameter("dob");
		System.out.println(dob);
		String contactno=request.getParameter("contactno");
		System.out.println(contactno);
		String address=request.getParameter("address");
		System.out.println(address);
		String email=request.getParameter("email");
		System.out.println(email);
		
		int stateId = Integer.parseInt(request.getParameter("stateName"));
		StateVO stateVO = new StateVO();
		stateVO.setStateId(stateId);
		System.out.println("st iddddddddddddd"+stateId);
		
		int cityId = Integer.parseInt(request.getParameter("cityName"));
		CityVO cityVO = new CityVO();
		cityVO.setCityId(cityId);
		System.out.println("c idddddddd"+cityId);
		
		
		int bloodtypeId = Integer.parseInt(request.getParameter("bloodType"));
		BloodtypeVO bloodtypeVO = new BloodtypeVO();
		bloodtypeVO.setBloodtypeId(bloodtypeId);
		System.out.println("b idddddddd"+bloodtypeId);
		
		LoginVO loginvo=new LoginVO();
		loginvo.setLoginId(loginId);
		RegVO regvo=new RegVO();
		regvo.setRegId(regId);
		regvo.setFirstname(firstname);
		regvo.setLastname(lastname);
		regvo.setLoginvo(loginvo);
		regvo.setGender(gender);
		regvo.setDob(dob);
		regvo.setContactno(contactno);
		regvo.setAddress(address);
		regvo.setEmail(email);
		regvo.setCityVO(cityVO);
		regvo.setStateVO(stateVO);
		regvo.setBloodtypeVO(bloodtypeVO);
		
		RegDAO regdao=new RegDAO();
		regdao.update(regvo);
		
		response.sendRedirect("user/U_index.jsp");

	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		// TODO Auto-generated method stub
		String firstname=request.getParameter("firstname");
		String lastname=request.getParameter("lastname");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String gender=request.getParameter("radio");
		String dob=request.getParameter("dob");
		String contactno=request.getParameter("contactno");
		String address=request.getParameter("address");
		String email=request.getParameter("email");
		
		int stateId = Integer.parseInt(request.getParameter("stateName"));
		StateVO stateVO = new StateVO();
		stateVO.setStateId(stateId);
		
		int cityId = Integer.parseInt(request.getParameter("cityName"));
		CityVO cityVO = new CityVO();
		cityVO.setCityId(cityId);
		
		int bloodtypeId = Integer.parseInt(request.getParameter("bloodType"));
		BloodtypeVO bloodtypeVO = new BloodtypeVO();
		bloodtypeVO.setBloodtypeId(bloodtypeId);
		
		LoginVO loginvo=new LoginVO();
		loginvo.setUserName(username);
		loginvo.setPassword(password);
		loginvo.setUserType("user");
		
		LoginDAO logindao=new LoginDAO();
		logindao.insert(loginvo);
		
		RegVO regvo=new RegVO();
		regvo.setFirstname(firstname);
		regvo.setLastname(lastname);
		regvo.setLoginvo(loginvo);
		regvo.setGender(gender);
		regvo.setDob(dob);
		regvo.setContactno(contactno);
		regvo.setAddress(address);
		regvo.setEmail(email);
		regvo.setCityVO(cityVO);
		regvo.setStateVO(stateVO);
		regvo.setBloodtypeVO(bloodtypeVO);
		
		RegDAO regdao=new RegDAO();
		regdao.insert(regvo);
		
		
		
		for(Part filePart : request.getParts())
		{
			if(filePart.getSubmittedFileName()!=null && !filePart.getSubmittedFileName().equals(""))
			{
				String fileName = filePart.getSubmittedFileName();
				InputStream fileContent = filePart.getInputStream();
				// ... (do your job here)

				byte[] buffer = new byte[fileContent.available()];
				fileContent.read(buffer);

				String filePath = getServletContext().getRealPath(request.getServletPath());

				System.out.println("filepath :: "+filePath);

				int path = filePath.lastIndexOf('\\');
				String path1= filePath.substring(0, path) + "/doc/";
				System.out.println("XC");

				/*File targetFile = new File(path1+fileName);
				OutputStream outStream = new FileOutputStream(targetFile);
				outStream.write(buffer);*/

				//uncomment this if you want to encrypt name of file n comment above 3 line
				String encryptedFileName=encryptFileName(fileName);
				File targetEncryptFile = new File(path1+encryptedFileName);

				OutputStream outStream = new FileOutputStream(targetEncryptFile);
				outStream.write(buffer);

				System.out.println("File Output Path :: "+path1+fileName);

				outStream.close();

				FileVO AttechmentVO=new FileVO();
				AttechmentVO.setFileName(fileName);
				AttechmentVO.setEncryptedFileName(encryptedFileName);
				AttechmentVO.setRegvo(regvo);
			
				regdao.insertAttachment(AttechmentVO);
				

			}
		}
		

		
	}

	private String encryptFileName(String fileName){

		Random r = new Random();
		String file[] = fileName.split("\\.");

		byte[] unencodedFile = file[0].getBytes();
		MessageDigest md = null;
		try {
			md = MessageDigest.getInstance("MD5");
		} catch (Exception e) {}
		md.reset();
		md.update(unencodedFile);
		byte[] encodedFile = md.digest();
		StringBuffer buf = new StringBuffer();
		for (int i = 0; i < encodedFile.length; i++) {
			if (((int) encodedFile[i] & 0xff) < 0x10) {
				buf.append("0");
			}
			buf.append(Long.toString((int) encodedFile[i] & 0xff, 16));
		}

		String encryptedFileName=(buf.toString()).concat(String.valueOf(r.nextInt())); 


		return encryptedFileName+"."+file[file.length-1];

	}
		
		

}
