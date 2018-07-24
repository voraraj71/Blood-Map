package Filter;

import java.io.IOException;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import DAO.BloodtypeDAO;
import DAO.LoginDAO;
import VO.LoginVO;

/**
 * Servlet Filter implementation class LoginFilter
 */
@WebFilter("/*")
public class LoginFilter implements Filter {

	/**
	 * Default constructor.
	 */
	public LoginFilter() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here

		// pass the request along the filter chain

		HttpSession session = ((HttpServletRequest) request).getSession();
		RequestDispatcher requestDispatcher;
		String flag = request.getParameter("flag");

		String uri = ((HttpServletRequest) request).getRequestURI();

		System.out.println("<<<<<Before >>>>>>>" + uri);

		if (uri.contains("register") || uri.contains("/U_index.jsp") || uri.contains("/step1.jsp")
				|| uri.contains("/step2.jsp") || uri.contains("/EventController")
				|| uri.contains("/forgetPasswordController") || uri.contains("/image") || uri.contains("/css")
				|| uri.contains("/js") && !uri.contains(".jsp") || uri.contains("/reg_header.jsp")
				|| uri.contains("/images") || uri.contains("/login.jsp") || uri.contains("/font") || uri.contains("/doc")
				|| uri.contains("/fonts") || uri.contains("/registration.jsp") || uri.contains("/RegController")
				|| uri.contains("/loadCityJSON.jsp") || uri.contains("/RegOrgController")|| uri.contains("/orgRegistration.jsp"))

		{
			System.out.println("<<<<<After >>>>>>>" + uri);
			chain.doFilter(request, response);
		} else if (flag != null && flag.equals("logout")) {

			session.invalidate();
			requestDispatcher = request.getRequestDispatcher("/user/login.jsp");
			requestDispatcher.forward(request, response);
		} else if (flag != null && flag.equals("login")) {
			String uname = request.getParameter("uname");
			String pass = request.getParameter("pass");

			System.out.println(uname + "" + pass);

			LoginVO LoginVO = new LoginVO();
			LoginVO.setUserName(uname);
			LoginVO.setPassword(pass);

			LoginDAO registrationDAO = new LoginDAO();

			List list = registrationDAO.authentication(LoginVO);

			/* System.out.println("List Size>>>>>>>"+list.size()); */

			if (list != null && list.size() >= 1) {

				// Iterator itr = list.iterator();

				// while(itr.hasNext()){
				LoginVO user = (LoginVO) list.get(0);

				int y = user.getLoginId();
				session.setAttribute("userID", y);

				// System.out.println(user.getRadio());
				// System.out.println(session.getAttribute("userId"));
				String type = user.getUserType();
				session.setAttribute("userType", type);
				System.out.println(y);
				if (type.equalsIgnoreCase("admin")) {
					requestDispatcher = request.getRequestDispatcher("/admin/index.jsp");
					requestDispatcher.forward(request, response);
				} else if (type.equalsIgnoreCase("organization")) {
					requestDispatcher = request.getRequestDispatcher("/Organisation/orgIndex.jsp");
					requestDispatcher.forward(request, response);
				}

				else if (type.equalsIgnoreCase("user")) {

					BloodtypeDAO bloodtypedaoobj = new BloodtypeDAO();

					List ls = bloodtypedaoobj.search();

					session.setAttribute("bloodList", ls);

					requestDispatcher = request.getRequestDispatcher("/user/U_index.jsp");
					requestDispatcher.forward(request, response);
				}

				else {
					requestDispatcher = request.getRequestDispatcher("/user/login.jsp");
					requestDispatcher.forward(request, response);
				}
			} else {
				requestDispatcher = request.getRequestDispatcher("/user/login.jsp");
				requestDispatcher.forward(request, response);
			}
		} else if (session.getAttribute("userID") != null) {
			String h = (String) session.getAttribute("userType");
			// System.out.println("type = = = " + h);

			if (h != null && h.equals("admin")) {

				// System.out.println("chain");
				chain.doFilter(request, response);
			}

			else if (h != null && h.equals("organization")) {
				// System.out.println("chain");
				chain.doFilter(request, response);
			} else if (h != null && h.equals("user")) {
				// System.out.println("chain");
				chain.doFilter(request, response);
			}

			else {
				RequestDispatcher rd = request.getRequestDispatcher("/user/login.jsp");
				rd.forward(request, response);
			}
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("/user/login.jsp");
			rd.forward(request, response);

		}

	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
