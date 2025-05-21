package com.islington.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import com.Auratimes.service.AdminDashboardService;

/**
 * Servlet implementation class AdminDashBoardControllers
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/AdminDashBoard" })
public class AdminDashBoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminDashBoardController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	AdminDashboardService service = new AdminDashboardService();

        int customerCount = service.getCustomerCount();
        int adminCount = service.getAdminCount();
        int productCount = service.getProductCount();
        double totalAmount = service.getTotalProductValue();

        request.setAttribute("customerCount", customerCount);
        request.setAttribute("adminCount", adminCount);
        request.setAttribute("productCount", productCount);
        request.setAttribute("totalAmount", totalAmount);

        request.getRequestDispatcher("/WEB-INF/pages/AdminDashBoard.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
