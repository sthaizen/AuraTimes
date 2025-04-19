package com.islington.controller;

import com.Auratimes.util.ValidationUtil;
import com.Auratimes.config.DbConfig;
import com.Auratimes.util.PasswordUtil;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class UserprofileController
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/userprofile" })
@MultipartConfig(
	    fileSizeThreshold = 1024 * 1024 * 2,  // 2MB
	    maxFileSize = 1024 * 1024 * 10,       // 10MB
	    maxRequestSize = 1024 * 1024 * 50     // 50MB
	)
public class UserprofileController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/pages/userprofile.jsp").forward(request, response);
    }
    @Override

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String fullName = request.getParameter("FullName");
        String username = request.getParameter("Username");
        String dateOfBirth = request.getParameter("Dateobirth");
        String gender = request.getParameter("Gender");
        String email = request.getParameter("Email");
        String password = request.getParameter("Password");
        String phoneNumber = request.getParameter("Phonenumber");

        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/pages/userprofile.jsp");

        // Input validation
        if (ValidationUtil.isNullOrEmpty(fullName)) {
            request.setAttribute("status", "Full name cannot be empty");
            dispatcher.forward(request, response);
            return;
        }
        if (!ValidationUtil.isAlphanumericStartingWithLetter(username)) {
            request.setAttribute("status", "Username must start with a letter and be alphanumeric");
            dispatcher.forward(request, response);
            return;
        }
        if (!ValidationUtil.isValidGender(gender)) {
            request.setAttribute("status", "Gender must be 'male' or 'female'");
            dispatcher.forward(request, response);
            return;
        }
        if (!ValidationUtil.isValidEmail(email)) {
            request.setAttribute("status", "Invalid email format");
            dispatcher.forward(request, response);
            return;
        }
        if (!ValidationUtil.isValidPassword(password)) {
            request.setAttribute("status", "Password must be 8+ chars, with a number, symbol, and uppercase letter");
            dispatcher.forward(request, response);
            return;
        }
        if (!ValidationUtil.isValidPhoneNumber(phoneNumber)) {
            request.setAttribute("status", "Phone number must be a 10-digit Nepali number starting with 98");
            dispatcher.forward(request, response);
            return;
        }

        // Update database
        try (Connection con = DbConfig.getDbConnection()) {
            String sql = "UPDATE users SET FullName = ?, DateOfBirth = ?, Gender = ?, Email = ?, Password = ?, PhoneNumber = ? WHERE Username = ?";
            try (PreparedStatement pst = con.prepareStatement(sql)) {
                pst.setString(1, fullName);
                pst.setString(2, dateOfBirth);
                pst.setString(3, gender);
                pst.setString(4, email);
                String encryptedPassword = PasswordUtil.encrypt(password, username);
                pst.setString(5, encryptedPassword);
                pst.setString(6, phoneNumber);                pst.setString(7, username);

                int rowCount = pst.executeUpdate();

                if (rowCount > 0) {
                    request.setAttribute("status", "Profile updated successfully!");
                } else {
                    request.setAttribute("status", "Update failed. User not found.");
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            request.setAttribute("status", "Database error: " + e.getMessage());
        }

        dispatcher.forward(request, response);
    }
}
