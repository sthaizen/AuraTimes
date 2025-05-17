package com.islington.controller;

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

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("Username");
        String password = request.getParameter("Password");
        jakarta.servlet.http.HttpSession session = request.getSession();
        RequestDispatcher dispatcher;

        try (Connection con = DbConfig.getDbConnection()) {

            // Only filter by username
            PreparedStatement pst = con.prepareStatement("SELECT * FROM users WHERE Username = ?");
            pst.setString(1, username);

            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                String encryptedPassword = rs.getString("Password");

                // Decrypt and compare using PasswordUtil
                if (PasswordUtil.match(password, username, encryptedPassword)) {
                    // Set session attributes
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
                    if ("admin".equals(role)) {
                        response.sendRedirect("AdminDashBoard"); // Redirects to the servlet
                        return; // prevent further execution
                    
                    } else {
                        dispatcher = request.getRequestDispatcher("/WEB-INF/pages/home.jsp");
                    }
                } else {
                    request.setAttribute("status", "Invalid username or password.");
                    dispatcher = request.getRequestDispatcher("/WEB-INF/pages/login.jsp");
                }
            } else {
                request.setAttribute("status", "Invalid username or password.");
                dispatcher = request.getRequestDispatcher("/WEB-INF/pages/login.jsp");
            }

            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("status", "error");
            request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
        }
    }
}
