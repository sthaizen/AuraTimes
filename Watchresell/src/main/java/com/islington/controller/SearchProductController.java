package com.islington.controller;
// importing
import com.Auratimes.model.ProductModel;
import com.Auratimes.service.CollectionServices;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/searchProduct")
public class SearchProductController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final CollectionServices service = new CollectionServices();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) // Handles GET requests
            throws ServletException, IOException {

        String query = request.getParameter("search"); // Retrieve the search input from the textfield
        List<ProductModel> collectionList;
     // If the brand name is provided and not empty, fetch products by brand
        if (query != null && !query.trim().isEmpty()) {
            collectionList = service.getProductsByBrand(query.trim());
        } else { // If no query, fetch all products
            collectionList = service.getAllProducts();
        }

        request.setAttribute("collectionList", collectionList); // Store the list of products in the request attribute
        request.getRequestDispatcher("/WEB-INF/pages/Collection.jsp").forward(request, response);// Forward the request to the JSP page that displays the products
    } 
}