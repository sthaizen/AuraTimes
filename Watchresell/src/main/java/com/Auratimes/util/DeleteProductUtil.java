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

// utility class for deleting product from admin dasbboard
@WebServlet("/DeleteProductUtil")
public class DeleteProductUtil extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	// Retrieve the product name to delete 
        String productName = request.getParameter("delete");
        String status = "";
        
        // CHECK if the product name is valid or not 
        if (productName != null && !productName.trim().isEmpty()) {
        	
            try (Connection con = DbConfig.getDbConnection()) { // connecting db, prepering it for execution, executing it and storing retrived data in rs 
                String sql = "DELETE FROM product WHERE product_name = ?"; //SQl query for deleting product accoring to product name
                PreparedStatement pst = con.prepareStatement(sql); 
                pst.setString(1, productName);

                int rowsDeleted = pst.executeUpdate();// Execute the delete operation, returning number of rows affected
                
             // If rowsDeleted > 0, the product was successfully deleted
                if (rowsDeleted > 0) {
                    status = "Product '" + productName + "' deleted successfully!";
                } else { 
                    status = "No product deleted. Please try again.";
                }

            } catch (Exception e) {
            	 // set error status message
                e.printStackTrace();
                status = "Error deleting product: " + e.getMessage();
            }
        }

        request.getSession().setAttribute("deleteStatus", status); // Store the status message in the session 
        response.sendRedirect("AdminDashBoard");  // Redirect user back to AdminDashBoard page
    }
}