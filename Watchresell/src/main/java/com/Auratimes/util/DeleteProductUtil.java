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

@WebServlet("/DeleteProductUtil")
public class DeleteProductUtil extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String productName = request.getParameter("delete");
        String status = "";

        if (productName != null && !productName.trim().isEmpty()) {
            try (Connection con = DbConfig.getDbConnection()) {
                String sql = "DELETE FROM product WHERE product_name = ?";
                PreparedStatement pst = con.prepareStatement(sql);
                pst.setString(1, productName);

                int rowsDeleted = pst.executeUpdate();
                if (rowsDeleted > 0) {
                    status = "Product '" + productName + "' deleted successfully!";
                } else {
                    status = "No product deleted. Please try again.";
                }

            } catch (Exception e) {
                e.printStackTrace();
                status = "Error deleting product: " + e.getMessage();
            }
        }

        request.getSession().setAttribute("deleteStatus", status);
        response.sendRedirect("AdminDashBoard");
    }
}