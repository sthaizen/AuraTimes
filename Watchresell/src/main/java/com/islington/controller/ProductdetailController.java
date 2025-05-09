package com.islington.controller;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.Auratimes.model.ProductModel;
import com.Auratimes.service.ProductDetailService;
import java.io.IOException;
import com.Auratimes.service.CollectionServices;

@WebServlet(asyncSupported = true, urlPatterns = { "/productdetail" })

public class ProductdetailController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	

        String productName = request.getParameter("productName");

        if (productName != null && !productName.trim().isEmpty()) {
            ProductDetailService service = new ProductDetailService();
            ProductModel product = service.getProductByName(productName);

            if (product != null) {
                request.setAttribute("product", product);
                request.getRequestDispatcher("/WEB-INF/pages/productdetail.jsp").forward(request, response);
            } else {
                response.sendError(HttpServletResponse.SC_NOT_FOUND, "Product not found");
            }
        } else {
            response.sendRedirect("Collection");
        }
    }
}
	
