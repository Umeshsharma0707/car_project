package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ServiceDao;
import model.Service;
/**
 * Servlet implementation class ServiceController
 */
@WebServlet("/ServiceController")
public class ServiceController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServiceController() {
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
		if(action.equalsIgnoreCase("upload service")) {
			Service ser = new Service();
       		ser.setSm_id(Integer.parseInt(request.getParameter("smId")));
			ser.setStype(request.getParameter("stype"));
			ser.setCmodel(request.getParameter("cmodel"));
			ser.setSprice(Integer.parseInt(request.getParameter("sprice")));
			ser.setDuration(request.getParameter("duration"));
			ServiceDao.insertSeller(ser);
			request.setAttribute("msg", "service uploaded successfully");
			request.getRequestDispatcher("serviceman-upload-service.jsp").forward(request,response);
			
		}
		
		else if(action.equalsIgnoreCase("update service")) {
			Service ser = new Service();
			ser.setS_id(Integer.parseInt(request.getParameter("s_id")));
//			System.out.println(Integer.parseInt(request.getParameter("s_id")));
			ser.setStype(request.getParameter("stype"));
			ser.setCmodel(request.getParameter("cmodel"));
			ser.setSprice(Integer.parseInt(request.getParameter("sprice")));
			ser.setDuration(request.getParameter("duration"));
			 ServiceDao.updateService(ser);
			request.setAttribute("UpdateMsg", "service updated succefully");
			request.getRequestDispatcher("serviceman-manage-service.jsp").forward(request, response);
		}
		else if(action.equalsIgnoreCase("delete service")) {
			Service ser = new Service();
			ser.setS_id(Integer.parseInt(request.getParameter("s_id")));
		}
	}

}
