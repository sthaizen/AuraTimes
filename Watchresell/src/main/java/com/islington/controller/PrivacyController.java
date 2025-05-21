package com.islington.controller;
//importing 
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class Home
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/privacy" })
public class PrivacyController extends HttpServlet {//  Java class that can handle HTTP requests (like GET or POST).
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PrivacyController() {
        super();
        
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/pages/privacy.jsp").forward(request, response);// Forward the request to the JSP page
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // process form data
    }

	

}