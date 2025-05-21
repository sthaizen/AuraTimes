package com.islington.controller;
// importing 
import com.Auratimes.model.CartItem;
import com.Auratimes.service.CartService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.List;

@WebServlet("/addtocart")
public class AddToCartController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	// Retreving product detail
        String productName = request.getParameter("productName");
        String watchBrand = request.getParameter("watchBrand");
        String priceStr = request.getParameter("productPrice");
        String productImage = request.getParameter("productImage");
        
        // check if data is valid or not
        if (productName != null && watchBrand != null && priceStr != null) {
            double productPrice = Double.parseDouble(priceStr);
            
            // Create a new CartItem
            CartItem item = new CartItem(productName, watchBrand, productPrice, productImage);
            
            
            // GET CURRENT USER SESSION AND ADD THE ITEMS 
            HttpSession session = request.getSession();
            CartService cartService = new CartService(session);
            cartService.addToCart(item);
        }

		/* response.sendRedirect(request.getContextPath() + "/productdetail"); */
        response.sendRedirect(request.getContextPath() + "/productdetail?productName=" + URLEncoder.encode(productName, "UTF-8"));  // Redirect back to product detail page

        
    }

    // display product in product display page 
    protected void doGet(HttpServletRequest request, HttpServletResponse response)// method is called when user visits add to cart page
            throws ServletException, IOException {
    	
    	//Gets the current cart from the session and retrives all cart items.
        HttpSession session = request.getSession(); // Get the current HTTP session for the user
        CartService cartService = new CartService(session); // Create a CartService object
        List<CartItem> cartItems = cartService.getCartItems(); // Retrieve the list of items currently stored in the user's cart
        
        //sends the list of item that is needed to be displayed on product detail page 
        request.setAttribute("cartItems", cartItems);
        request.getRequestDispatcher("/WEB-INF/pages/addtocart.jsp").forward(request, response);
    }
}
