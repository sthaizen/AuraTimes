package com.islington.controller;
// importing 
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.Auratimes.model.ProductModel;
import com.Auratimes.service.CollectionServices;

@WebServlet(asyncSupported = true, urlPatterns = { "/Collection" })// Servlet mapped to handle requests to "/Collection" URL
public class CollectionController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private CollectionServices collectionServices;

    /**
     * Constructor to initialize CollectionServices.
     */
    public CollectionController() {
        collectionServices = new CollectionServices();
    }

    /**
     * Handles the GET request to fetch all products and forward to collection page.
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        List<ProductModel> collectionList = collectionServices.getAllProducts(); // Retreving the list of all products using the collecting service

        request.setAttribute("collectionList", collectionList); // allows the collection to access the array list for displaying
        
        // Forward the request to the Collection.jsp page for displaying 
        request.getRequestDispatcher("/WEB-INF/pages/Collection.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Process form data (currently unused)
    }
}
