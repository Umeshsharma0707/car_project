package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.BookService;
import dao.BookServiceDao;
/**
 * Servlet implementation class BookServiceController
 */
@WebServlet("/BookServiceController")
public class BookServiceController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookServiceController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action.equalsIgnoreCase("book")) {
			BookService b = new BookService();
		
			b.setC_id(Integer.parseInt(request.getParameter("cid")));
			b.setS_id(Integer.parseInt(request.getParameter("sid")));
			b.setSm_id(Integer.parseInt(request.getParameter("sm_id")));
			b.setPayment_status("pending");
			b.setService_status("pending");
			BookServiceDao.bookService(b);
			request.setAttribute("bookRequest","Book request sent");
			request.getRequestDispatcher("customer-home.jsp").forward(request, response);
			
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
