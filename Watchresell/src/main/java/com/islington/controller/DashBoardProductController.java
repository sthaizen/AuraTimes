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

@WebServlet(asyncSupported = true, urlPatterns = { "/dashBoardProduct" })
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 50)
public class DashBoardProductController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String UPLOAD_DIR = "uploads";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String editProductName = request.getParameter("edit");
        if (editProductName != null) {
            try (Connection con = DbConfig.getDbConnection()) {
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

                    request.setAttribute("editProduct", product);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        AdminDashboardService service = new AdminDashboardService();
        List<ProductModel> adminProducts = service.getAllAdminProducts();
        List<UserModel> adminUsers = service.getAllRegisteredUsers();

        request.setAttribute("adminProducts", adminProducts);
        request.setAttribute("adminUsers", adminUsers);
        request.getRequestDispatcher("/WEB-INF/pages/DashBoardProduct.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String productName = request.getParameter("product_name");
            String description = request.getParameter("description");
            Double productPrice = Double.parseDouble(request.getParameter("product_price"));
            String watchBrand = request.getParameter("watch_brand");
            Double previousBid = Double.parseDouble(request.getParameter("previous_bid"));
            String originalProductName = request.getParameter("original_product_name");

            Part part = request.getPart("product_img");
            String fileName = part.getSubmittedFileName();

            String uploadPath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIR;
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) uploadDir.mkdir();

            if (!fileName.isEmpty()) {
                part.write(uploadPath + File.separator + fileName);
            }

            try (Connection con = DbConfig.getDbConnection()) {
                String sql;
                PreparedStatement pst;

                if (originalProductName != null && !originalProductName.isEmpty()) {
                    // Update case
                    if (!fileName.isEmpty()) {
                        sql = "UPDATE product SET product_name=?, description=?, product_price=?, product_img=?, watch_brand=?, previous_bid=? WHERE product_name=?";
                        pst = con.prepareStatement(sql);
                        pst.setString(4, fileName);
                    } else {
                        sql = "UPDATE product SET product_name=?, description=?, product_price=?, watch_brand=?, previous_bid=? WHERE product_name=?";
                        pst = con.prepareStatement(sql);
                    }

                    pst.setString(1, productName);
                    pst.setString(2, description);
                    pst.setDouble(3, productPrice);
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
                    // Insert case
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

        // Fetch and refresh view
        AdminDashboardService service = new AdminDashboardService();
        List<ProductModel> adminProducts = service.getAllAdminProducts();
        List<UserModel> adminUsers = service.getAllRegisteredUsers();

        request.setAttribute("adminProducts", adminProducts);
        request.setAttribute("adminUsers", adminUsers);
        request.getRequestDispatcher("/WEB-INF/pages/DashBoardProduct.jsp").forward(request, response);
    }
}
