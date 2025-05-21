package com.islington.controller;

// importing 
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
    	

        String productName = request.getParameter("productName"); // Retrieve the product name for inputfield
        
        // Check if product name is provided and not empty
        if (productName != null && !productName.trim().isEmpty()) {
        	// retrive product details based on product name
            ProductDetailService service = new ProductDetailService();
            ProductModel product = service.getProductByName(productName);

            if (product != null) {
                request.setAttribute("product", product);
                request.getRequestDispatcher("/WEB-INF/pages/productdetail.jsp").forward(request, response);
            } else {// If product is not found send error message
                response.sendError(HttpServletResponse.SC_NOT_FOUND, "Product not found");
            }
        } else { // If no product name is provided, redirect to Collection page
            response.sendRedirect("Collection");
        }
    }
}
	
