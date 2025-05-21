package com.Auratimes.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import com.Auratimes.config.DbConfig;
import com.Auratimes.model.ProductModel;
import com.Auratimes.model.UserModel;
import com.Auratimes.service.AdminDashboardService;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

/**
 * Servlet implementation for product management in admin dashboard.
 * We added this to handle product CRUD operations and file uploads.
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/dashBoardProduct" })
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 2,  // 2MB
    maxFileSize = 1024 * 1024 * 10,       // 10MB
    maxRequestSize = 1024 * 1024 * 50     // 50MB
)
public class DashBoardProductController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String UPLOAD_DIR = "uploads"; // Folder to store product images

    // ====================== GET REQUEST HANDLER ====================== //
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // We check if this is an edit request for a specific product
        String editProductName = request.getParameter("edit");
        if (editProductName != null) {
            try (Connection con = DbConfig.getDbConnection()) {
                // We fetch product details from database for editing
                String sql = "SELECT * FROM product WHERE product_name = ?";
                PreparedStatement pst = con.prepareStatement(sql);
                pst.setString(1, editProductName);
                ResultSet rs = pst.executeQuery();

                if (rs.next()) {
                    ProductModel product = new ProductModel();
                    product.setProduct_Name(rs.getString("product_name"));
                    product.setDescription(rs.getString("description"));
                    product.setProduct_Price(rs.getDouble("product_price"));
                    product.setProduct_Img(rs.getString("product_img"));
                    product.setWatch_brand(rs.getString("watch_brand"));
                    product.setPrevious_bid(rs.getInt("previous_bid"));

                    // We pass the product to the JSP for editing
                    request.setAttribute("editProduct", product);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        // We load all products and users for the dashboard
        AdminDashboardService service = new AdminDashboardService();
        List<ProductModel> adminProducts = service.getAllAdminProducts();
        List<UserModel> adminUsers = service.getAllRegisteredUsers();

        request.setAttribute("adminProducts", adminProducts);
        request.setAttribute("adminUsers", adminUsers);
        request.getRequestDispatcher("/WEB-INF/pages/DashBoardProduct.jsp").forward(request, response);
    }

    // ====================== POST REQUEST HANDLER ====================== //
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            // We get all product details from the form
            String productName = request.getParameter("product_name");
            String description = request.getParameter("description");
            Double productPrice = Double.parseDouble(request.getParameter("product_price"));
            String watchBrand = request.getParameter("watch_brand");
            Double previousBid = Double.parseDouble(request.getParameter("previous_bid"));
            String originalProductName = request.getParameter("original_product_name"); // For edit case

            // We handle the product image upload
            Part part = request.getPart("product_img");
            String fileName = part.getSubmittedFileName();

            // We set up the upload directory if it doesn't exist
            String uploadPath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIR;
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) uploadDir.mkdir();

            // We save the new image only if a file was uploaded
            if (!fileName.isEmpty()) {
                part.write(uploadPath + File.separator + fileName);
            }

            // ========= DATABASE OPERATION ========= //
            try (Connection con = DbConfig.getDbConnection()) {
                String sql;
                PreparedStatement pst;

                // We check if this is an update or new product
                if (originalProductName != null && !originalProductName.isEmpty()) {
                    // UPDATE CASE: We update existing product
                    if (!fileName.isEmpty()) {
                        // If new image was uploaded
                        sql = "UPDATE product SET product_name=?, description=?, product_price=?, product_img=?, watch_brand=?, previous_bid=? WHERE product_name=?";
                        pst = con.prepareStatement(sql);
                        pst.setString(4, fileName);
                    } else {
                        // If no new image was uploaded
                        sql = "UPDATE product SET product_name=?, description=?, product_price=?, watch_brand=?, previous_bid=? WHERE product_name=?";
                        pst = con.prepareStatement(sql);
                    }

                    pst.setString(1, productName);
                    pst.setString(2, description);
                    pst.setDouble(3, productPrice);
                    
                    // We set parameters differently based on whether image was updated
                    if (!fileName.isEmpty()) {
                        pst.setString(5, watchBrand);
                        pst.setDouble(6, previousBid);
                        pst.setString(7, originalProductName);
                    } else {
                        pst.setString(4, watchBrand);
                        pst.setDouble(5, previousBid);
                        pst.setString(6, originalProductName);
                    }

                    int rows = pst.executeUpdate();
                    if (rows > 0) {
                        request.setAttribute("status", "Product updated successfully!");
                    } else {
                        request.setAttribute("status", "Failed to update product.");
                    }

                } else {
                    // INSERT CASE: We add a new product
                    sql = "INSERT INTO product (product_name, description, product_price, product_img, watch_brand, previous_bid) VALUES (?, ?, ?, ?, ?, ?)";
                    pst = con.prepareStatement(sql);
                    pst.setString(1, productName);
                    pst.setString(2, description);
                    pst.setDouble(3, productPrice);
                    pst.setString(4, fileName);
                    pst.setString(5, watchBrand);
                    pst.setDouble(6, previousBid);

                    int row = pst.executeUpdate();
                    if (row > 0) {
                        request.setAttribute("status", "Product uploaded successfully!");
                    } else {
                        request.setAttribute("status", "Failed to upload product.");
                    }
                }

            } catch (Exception e) {
                e.printStackTrace();
                request.setAttribute("status", "Database error: " + e.getMessage());
            }

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("status", "Unexpected error: " + e.getMessage());
        }

        // We refresh the dashboard data after any operation
        AdminDashboardService service = new AdminDashboardService();
        List<ProductModel> adminProducts = service.getAllAdminProducts();
        List<UserModel> adminUsers = service.getAllRegisteredUsers();

        request.setAttribute("adminProducts", adminProducts);
        request.setAttribute("adminUsers", adminUsers);
        request.getRequestDispatcher("/WEB-INF/pages/DashBoardProduct.jsp").forward(request, response);
    }
}
