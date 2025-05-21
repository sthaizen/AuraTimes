package com.islington.controller;
// importing
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Cookie;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.Auratimes.config.DbConfig;
import com.Auratimes.util.PasswordUtil;

@WebServlet(asyncSupported = true, urlPatterns = { "/login" })
public class loginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public loginController() {
        super();
    }
    // Handle GET requests 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response); // display the login page
    }
    
 // Handle POST requests
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
    	
    	// Get username and password from form input text fields
        String username = request.getParameter("Username");
        String password = request.getParameter("Password");
        jakarta.servlet.http.HttpSession session = request.getSession(); // Createing HTTP session
        RequestDispatcher dispatcher;

        try (Connection con = DbConfig.getDbConnection()) {

            // Only filter by username
            PreparedStatement pst = con.prepareStatement("SELECT * FROM users WHERE Username = ?"); //  sql statement to find the user from the database
            
            pst.setString(1, username); // prepase statement

            ResultSet rs = pst.executeQuery(); // execution statement

            if (rs.next()) { // if uses exists
                String encryptedPassword = rs.getString("Password");

                // Decrypt and compare using PasswordUtil
                if (PasswordUtil.match(password, username, encryptedPassword)) {
                    // store user info in session attributes
                    session.setAttribute("Username", rs.getString("Username"));
                    session.setAttribute("FullName", rs.getString("FullName"));
                    session.setAttribute("DateOfBirth", rs.getString("DateOfBirth"));
                    session.setAttribute("Gender", rs.getString("Gender"));
                    session.setAttribute("PhoneNumber", rs.getString("PhoneNumber"));
                    session.setAttribute("Email", rs.getString("Email"));

                    //  Set user role in session
                    String role = "customer";  // Default role
                    if ("yatharthadai".equals(rs.getString("Username"))) {
                        role = "admin";  // if you want to make changes in the admin update here
                    }
                    session.setAttribute("Role", role);

                    // Set the role cookie 
                    Cookie roleCookie = new Cookie("role", role);
                    roleCookie.setMaxAge(30 * 24 * 60 * 60); 
                    response.addCookie(roleCookie);

                    // Redirect to the home page or dashboard based on role
                    if ("admin".equals(role)) { // If the user's role is admin
                        response.sendRedirect("AdminDashBoard");  // redirect to admin dashboard
                        return; // prevent further execution
                    
                    } else {
                        dispatcher = request.getRequestDispatcher("/WEB-INF/pages/home.jsp"); // If the role is not admin , redirect to home page
                    }
                } else { // if user name or password is wrong  
                    request.setAttribute("status", "Invalid username or password.");
                    dispatcher = request.getRequestDispatcher("/WEB-INF/pages/login.jsp"); // redirect to login page
                }
            } else { 
                request.setAttribute("status", "Invalid username or password.");
                dispatcher = request.getRequestDispatcher("/WEB-INF/pages/login.jsp");
            }

            dispatcher.forward(request, response); // fordward request to approprate jsp
            
             
        } catch (Exception e) { // exception handeling
            e.printStackTrace();
            request.setAttribute("status", "error");
            request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response); // Forward the request to the login.jsp page 
        }
    }
}
