package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CustomerDao;
import model.Customer;

/**
 * Servlet implementation class CustomerController
 */
@WebServlet("/CustomerController")
public class CustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerController() {
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
		if(action.equalsIgnoreCase("customerRegister")) {
			Customer c = new Customer();
			c.setName(request.getParameter("name"));
			c.setContact(Long.parseLong(request.getParameter("contact")));
			c.setAddress(request.getParameter("address"));
			c.setEmail(request.getParameter("email"));
			c.setPassword(request.getParameter("password"));
			CustomerDao.insertCustomer(c);
			request.setAttribute("regsterMsg", "you registered Succesfully");
			request.getRequestDispatcher("customer-login.jsp").forward(request, response);
			
		}
		else 
			
			if(action.equalsIgnoreCase("CustomerLogin")) {
				Customer c = new Customer();
				c.setEmail(request.getParameter("email"));
				c.setPassword(request.getParameter("password"));
				String email = request.getParameter("email");
				boolean flag = CustomerDao.checkEmail(email);
				if(flag==true) {
					Customer c1 = CustomerDao.customerLogin(c);
					if(c1==null) {
						request.setAttribute("passWrngMsg", "password is incorrect");
						request.getRequestDispatcher("customer-login.jsp").forward(request, response);
					}else {
						HttpSession session = request.getSession();
						session.setAttribute("data", c1);
						request.getRequestDispatcher("customer-home.jsp").forward(request, response);
					}
				}else {
					request.setAttribute("notregisteredMsg", "Account not found");
					request.getRequestDispatcher("customer-login.jsp").forward(request, response);
				}
			}
	}

}
