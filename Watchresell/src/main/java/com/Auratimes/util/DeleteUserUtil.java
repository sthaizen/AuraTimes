package com.Auratimes.util;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.Auratimes.config.DbConfig;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/DeleteUserUtil")
public class DeleteUserUtil extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("delete");
        String status = "";

        if (username != null && !username.trim().isEmpty()) {
            try (Connection con = DbConfig.getDbConnection()) {
                String sql = "DELETE FROM users WHERE username = ?";
                PreparedStatement pst = con.prepareStatement(sql);
                pst.setString(1, username);

                int rowsDeleted = pst.executeUpdate();
                if (rowsDeleted > 0) {
                    status = "User '" + username + "' deleted successfully!";
                } else {
                    status = "No user deleted. Please try again.";
                }

            } catch (Exception e) {
                e.printStackTrace();
                status = "Error deleting user: " + e.getMessage();
            }
        }

        request.getSession().setAttribute("deleteStatus", status);
        response.sendRedirect("AdminDashBoard");
    }
}
