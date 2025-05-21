package com.islington.controller;
// importing
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.Auratimes.util.CookieUtil;
import com.Auratimes.util.SessionUtil;

/**
 * Servlet class for handeling logout and clearing session 
 */

@WebServlet(asyncSupported = true, urlPatterns = {"/logout"})
public class logoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CookieUtil.deleteCookie(response, "role");  // Delete the 'role' cookie so the user is no longer remembered as admin/customer
		SessionUtil.invalidateSession(request);  // Invalidate the current HTTP session (clears all session attributes)
		response.sendRedirect(request.getContextPath() + "/login"); // Redirect the user to the login page after logout
	}


}
