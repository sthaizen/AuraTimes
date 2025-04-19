package com.islington.controller;

import com.Auratimes.util.ValidationUtil;
import com.Auratimes.config.DbConfig;
import com.Auratimes.util.PasswordUtil;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(asyncSupported = true, urlPatterns = { "/register" })
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 2,  // 2MB
    maxFileSize = 1024 * 1024 * 10,       // 10MB
    maxRequestSize = 1024 * 1024 * 50     // 50MB
)
public class RegisterController extends HttpServlet {
    private static final long serialVersionUID = 1L;

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

        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/pages/register.jsp");

        // Validate fields
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

        // If validation passes, insert into database
        try (Connection con = DbConfig.getDbConnection()) {
            PreparedStatement pst = con.prepareStatement("INSERT INTO users (FullName, Username, DateOfBirth, Gender, Email, Password, PhoneNumber) VALUES (?, ?, ?, ?, ?, ?, ?)");
            pst.setString(1, fullName);
            pst.setString(2, username);
            pst.setString(3, dateOfBirth);
            pst.setString(4, gender);
            pst.setString(5, email);
            String encryptedPassword = PasswordUtil.encrypt(password, username);
            pst.setString(6, encryptedPassword);
            pst.setString(7, phoneNumber);

            int rowCount = pst.executeUpdate();
            jakarta.servlet.http.HttpSession session = request.getSession();
            ResultSet rs = pst.executeQuery();
            
            if (rowCount > 0) {
            	session.setAttribute("FullName", fullName);
                request.setAttribute("status", "Registration successful!");
            } else {
                request.setAttribute("status", "Registration failed, please try again.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("status", "Database error: " + e.getMessage());
        }

        dispatcher.forward(request, response);
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/pages/register.jsp").forward(request, response);
    }
}
