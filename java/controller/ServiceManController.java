package controller;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ServiceManDao;
import model.ServiceMan;
import servicess.Servicesss;

/**
 * Servlet implementation class ServiceManController
 */
@WebServlet("/ServiceManController")
public class ServiceManController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServiceManController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String action = request.getParameter("action");
			if(action.equalsIgnoreCase("register")) {
				String email = request.getParameter("email");
				boolean flag = ServiceManDao.checkEmail(email);
				if(flag==true) {
					request.setAttribute("alreadyregisterMsg","account already registered");
					request.getRequestDispatcher("serviceMan-register.jsp").forward(request, response);
				}
				else {
					ServiceMan s = new ServiceMan();
					s.setName(request.getParameter("name"));
					s.setContact(Long.parseLong(request.getParameter("contact")));
					s.setAddress(request.getParameter("address"));
					s.setEmail(request.getParameter("email"));
					s.setPassword(request.getParameter("password"));
					ServiceManDao.insertSellerMan(s);
					request.setAttribute("registerMsg", "you registered successfully");
					request.getRequestDispatcher("serviceman-login.jsp").forward(request, response);
				}
				
			}
			else if(action.equalsIgnoreCase("ServiceManlogin")) {
				ServiceMan s = new ServiceMan();
				s.setEmail(request.getParameter("email"));
				s.setPassword(request.getParameter("password"));
				String email = request.getParameter("email");
				boolean flag = ServiceManDao.checkEmail(email);
				if(flag==true) {
					ServiceMan s1 = ServiceManDao.serviceManLogin(s);
					if(s1==null) {
						request.setAttribute("passWrngMsg", "password is incorrect");
						request.getRequestDispatcher("serviceman-login.jsp").forward(request, response);
					}else {
						HttpSession session = request.getSession();
						session.setAttribute("data", s1);
						request.getRequestDispatcher("serviceMan-home.jsp").forward(request, response);
					}
				}else {
					request.setAttribute("notregisteredMsg", "Account not found");
					request.getRequestDispatcher("serviceman-login.jsp").forward(request, response);
				}
			}
			// update condition
			else if(action.equalsIgnoreCase("update")) {
				ServiceMan s = new ServiceMan();
				s.setId(Integer.parseInt(request.getParameter("id")));
				s.setName(request.getParameter("name"));
				s.setContact(Long.parseLong(request.getParameter("contact")));
				s.setAddress(request.getParameter("address"));
				s.setEmail(request.getParameter("email"));
				ServiceManDao.updateServiceMan(s);
				HttpSession session = request.getSession();
				session.setAttribute("data", s);
				request.getRequestDispatcher("serviceMan-home.jsp").forward(request, response);
			}
			else if(action.equalsIgnoreCase("update password")) {
				 ServiceMan s = new ServiceMan();
				 String email = request.getParameter("email");
				 String op = request.getParameter("op");
				 String np = request.getParameter("np");
				 String cnp = request.getParameter("cnp");
				 boolean flag = ServiceManDao.checkPassword(email, op);
				 if(flag==true) {
					 if(np.equals(cnp)) {
						 ServiceManDao.updatePassword(email,np);
						 request.setAttribute("msg2", "password updated");
						 request.getRequestDispatcher("serviceMan-home.jsp").forward(request, response);
					 }else {
						 request.setAttribute("msg3","new password and confirm new password is incorrect");
						 request.getRequestDispatcher("serviceman-change-password.jsp").forward(request, response);
					 }
				 }else {
					 request.setAttribute("msg","old password is incorrect");
					 request.getRequestDispatcher("serviceman-change-password.jsp").forward(request, response);
				 }
				 
			}
			else if(action.equalsIgnoreCase("get otp")) {
				String email = request.getParameter("email");
				boolean flag = ServiceManDao.checkEmail(email);
				if(flag==true) {
					Random r = new Random();
					int num = r.nextInt(999999);
					Servicesss s = new Servicesss();
					s.sendMail(email, num);
					request.setAttribute("otp", num);
					request.getRequestDispatcher("verify-otp.jsp").forward(request, response);
					
				}
				else {
					request.setAttribute("msg","account not found");
					request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
				}
			}
			else if(action.equalsIgnoreCase("verify otp")) {
				String email = request.getParameter("email");
				int otp1 = Integer.parseInt(request.getParameter("otp1"));
				int otp2 = Integer.parseInt(request.getParameter("otp2"));
				if(otp1==otp2) {
					request.setAttribute("email", email);
					request.getRequestDispatcher("new-password.jsp").forward(request, response);
				}
				else {
					request.setAttribute("otpwrng", "wrong otp");
					request.getRequestDispatcher("verify-otp.jsp").forward(request, response);
				}
			}
			else if(action.equalsIgnoreCase("change password")) {
				String email = request.getParameter("email");
				String np = request.getParameter("np");
				 String cnp = request.getParameter("cnp");
				 if(np.equals(cnp)) {
					 ServiceManDao.updatePassword(email, np);
					 response.sendRedirect("serviceman-login.jsp");
				 }
			}
			
			
	}

}
