package com.Auratimes.controller;

import com.Auratimes.util.ValidationUtil;
import com.Auratimes.config.DbConfig;
import com.Auratimes.util.PasswordUtil;
import com.Auratimes.model.UserModel;
import com.Auratimes.service.AdminDashboardService;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation for admin profile management
 * We created this controller specifically to handle admin profile updates
 * after removing product-related functionality to separate controller.
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/adminProfile" })
public class AdminProfileController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // ====================== GET REQUEST HANDLER ====================== //
    /**
     * Handles GET requests for admin profile page
     * We use this to load all registered users for admin dashboard display
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // We initialize the service to fetch user data
        AdminDashboardService service = new AdminDashboardService();
        
        // We get all registered users to display in admin panel
        List<UserModel> adminUsers = service.getAllRegisteredUsers();
        request.setAttribute("adminUsers", adminUsers);
        
        // We forward to the admin profile page with user data
        request.getRequestDispatcher("/WEB-INF/pages/AdminProfile.jsp").forward(request, response);
    }

    // ====================== POST REQUEST HANDLER ====================== //
    /**
     * Handles POST requests for profile updates
     * We made this to process admin profile update forms
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // We delegate profile update logic to separate method
        updateAdminProfile(request, response);
    }
    
    // ====================== PROFILE UPDATE METHOD ====================== //
    /**
     * Handles the actual profile update logic
     * We created this method to centralize all update operations
     * Only updates admin profiles and blocks regular user profile updates
     */
    private void updateAdminProfile(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // We retrieve all form parameters from the request
        String fullName = request.getParameter("FullName");
        String username = request.getParameter("Username");
        String dateOfBirth = request.getParameter("Dateobirth");
        String gender = request.getParameter("Gender");
        String email = request.getParameter("Email");
        String password = request.getParameter("Password");
        String phoneNumber = request.getParameter("Phonenumber");

        // We reload user data to keep dashboard updated
        AdminDashboardService service = new AdminDashboardService();
        List<UserModel> adminUsers = service.getAllRegisteredUsers();
        request.setAttribute("adminUsers", adminUsers);
        
        // We prepare the dispatcher for forwarding requests
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/pages/AdminProfile.jsp");

        // First check if username belongs to an admin account
        if (!isAdminUser(username)) {
            request.setAttribute("status", "Only the details of admin can be updated");
            dispatcher.forward(request, response);
            return;
        }
        
        // ========= INPUT VALIDATION SECTION ========= //
        // We validate full name isn't empty
        if (ValidationUtil.isNullOrEmpty(fullName)) {
            request.setAttribute("status", "Full name cannot be empty");
            dispatcher.forward(request, response);
            return;
        }
        
        // We check username follows alphanumeric pattern
        if (!ValidationUtil.isAlphanumericStartingWithLetter(username)) {
            request.setAttribute("status", "Username not matching");
            dispatcher.forward(request, response);
            return;
        }
        
        // We validate gender is either male or female
        if (!ValidationUtil.isValidGender(gender)) {
            request.setAttribute("status", "Gender must be 'male' or 'female'");
            dispatcher.forward(request, response);
            return;
        }
        
        // We verify email format is correct
        if (!ValidationUtil.isValidEmail(email)) {
            request.setAttribute("status", "Invalid email format");
            dispatcher.forward(request, response);
            return;
        }
        
        // We enforce strong password requirements
        if (!ValidationUtil.isValidPassword(password)) {
            request.setAttribute("status", "Password must be 8+ chars, with a number, symbol, and uppercase letter");
            dispatcher.forward(request, response);
            return;
        }
        
        // We validate Nepali phone number format
        if (!ValidationUtil.isValidPhoneNumber(phoneNumber)) {
            request.setAttribute("status", "Phone number must be a 10-digit Nepali number starting with 98");
            dispatcher.forward(request, response);
            return;
        }

        // ========= DATABASE UPDATE SECTION ========= //
        try (Connection con = DbConfig.getDbConnection()) {
            // We prepare SQL query to update admin profile
            String sql = "UPDATE users SET FullName = ?, DateOfBirth = ?, Gender = ?, Email = ?, Password = ?, PhoneNumber = ? WHERE Username = ?";
            
            try (PreparedStatement pst = con.prepareStatement(sql)) {
                // We set all parameters for the update query
                pst.setString(1, fullName);
                pst.setString(2, dateOfBirth);
                pst.setString(3, gender);
                pst.setString(4, email);
                
                // We encrypt the password before storing
                String encryptedPassword = PasswordUtil.encrypt(password, username);
                pst.setString(5, encryptedPassword);
                
                pst.setString(6, phoneNumber);
                pst.setString(7, username);

                // We execute the update and check if it succeeded
                int rowCount = pst.executeUpdate();

                if (rowCount > 0) {
                    request.setAttribute("status", "Admin profile updated successfully!");
                    
                    // We update session attributes to reflect changes immediately
                    request.getSession().setAttribute("FullName", fullName);
                    request.getSession().setAttribute("DateOfBirth", dateOfBirth);
                    request.getSession().setAttribute("Gender", gender);
                    request.getSession().setAttribute("Email", email);
                    request.getSession().setAttribute("PhoneNumber", phoneNumber);
                } else {
                    request.setAttribute("status", "Update failed. Admin user not found.");
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            request.setAttribute("status", "Database error: " + e.getMessage());
        }

        // We forward back to profile page with status message
        dispatcher.forward(request, response);
    }
    
    /**
     * Helper method to check if the username belongs to an admin account
     * @param username The username to check
     * @return true if user is an admin, false otherwise
     */
    private boolean isAdminUser(String username) {
        // Based on the loginController, "Sujal" is the admin username
        return "Sujal".equals(username);
    }
}