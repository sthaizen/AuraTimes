package com.islington.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import com.Auratimes.config.DbConfig;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet(asyncSupported = true, urlPatterns = { "/Try" })
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
                 maxFileSize = 1024 * 1024 * 10,       // 10MB
                 maxRequestSize = 1024 * 1024 * 50)    // 50MB
public class TryController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String UPLOAD_DIR = "uploads"; // folder to save uploaded images

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/pages/Try.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Fetch form parameters
            String productName = request.getParameter("product_name");
            String description = request.getParameter("description");
            Double productPrice = Double.parseDouble(request.getParameter("product_price"));
            String watchBrand = request.getParameter("watch_brand");
            Double previousBid = Double.parseDouble(request.getParameter("previous_bid"));

            // Handle file upload
            Part part = request.getPart("product_img");
            String fileName = part.getSubmittedFileName();

            // Get absolute path to save file
            String uploadPath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIR;
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) uploadDir.mkdir();

            // Save the file
            part.write(uploadPath + File.separator + fileName);

            // Save details to DB
            try (Connection con = DbConfig.getDbConnection()) {
                String sql = "INSERT INTO product (product_name, description, product_price, product_img, watch_brand, previous_bid) VALUES (?, ?, ?, ?, ?, ?)";
                PreparedStatement pst = con.prepareStatement(sql);
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
            } catch (Exception e) {
                e.printStackTrace();
                request.setAttribute("status", "Database error: " + e.getMessage());
            }

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("status", "Unexpected error: " + e.getMessage());
        }

        request.getRequestDispatcher("/WEB-INF/pages/Try.jsp").forward(request, response);
    }
}
