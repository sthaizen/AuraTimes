package com.islington.controller;

import com.Auratimes.model.CartItem;
import com.Auratimes.service.CartService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;

@WebServlet("/addtocart")
public class AddToCartController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String productName = request.getParameter("productName");
        String watchBrand = request.getParameter("watchBrand");
        String priceStr = request.getParameter("productPrice");
        String productImage = request.getParameter("productImage");

        if (productName != null && watchBrand != null && priceStr != null) {
            double productPrice = Double.parseDouble(priceStr);
            CartItem item = new CartItem(productName, watchBrand, productPrice, productImage);

            HttpSession session = request.getSession();
            CartService cartService = new CartService(session);
            cartService.addToCart(item);
        }

        	response.sendRedirect(request.getContextPath() + "/addtocart"); 
        
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        CartService cartService = new CartService(session);
        List<CartItem> cartItems = cartService.getCartItems();
        request.setAttribute("cartItems", cartItems);
        request.getRequestDispatcher("/WEB-INF/pages/addtocart.jsp").forward(request, response);
    }
}
