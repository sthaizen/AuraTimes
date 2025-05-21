package com.Auratimes.util;
// importing 
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.Auratimes.config.DbConfig;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;


// utility class for deleting user from the database 
@WebServlet("/DeleteUserUtil")

public class DeleteUserUtil extends HttpServlet {
    private static final long serialVersionUID = 1L;
    /**
     * Handles HTTP POST request to delete a user.
     */

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	 // Get the username to delete 
        String username = request.getParameter("delete");
        String status = "";
        // Run if enterd user name is valid
        if (username != null && !username.trim().isEmpty()) { 
            try (Connection con = DbConfig.getDbConnection()) {  // connecting db, prepering it for execution, executing it and storing retrived data in rs 
                String sql = "DELETE FROM users WHERE username = ?";
                PreparedStatement pst = con.prepareStatement(sql);
                pst.setString(1, username);
             // Check if any row was deleted and send notificaiton 
                int rowsDeleted = pst.executeUpdate();
                if (rowsDeleted > 0) {
                    status = "User '" + username + "' deleted successfully!";
                } else {
                    status = "No user deleted. Please try again.";
                }

            } catch (Exception e) { //exceptation handeling 
                e.printStackTrace();
                status = "Error deleting user: " + e.getMessage();
            }
        }

        request.getSession().setAttribute("deleteStatus", status);  // Store the status message to display on AdminDashBoard
        response.sendRedirect("AdminDashBoard");// Redirect to Admin Dashboard
    }
}
