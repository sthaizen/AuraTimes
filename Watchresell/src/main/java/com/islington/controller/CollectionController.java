package com.islington.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.Auratimes.model.ProductModel;
import com.Auratimes.service.CollectionServices;

@WebServlet(asyncSupported = true, urlPatterns = { "/Collection" })
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
       
        List<ProductModel> collectionList = collectionServices.getAllProducts();

        request.setAttribute("collectionList", collectionList);
        
        // Forward the request to the Collection.jsp page
        request.getRequestDispatcher("/WEB-INF/pages/Collection.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Process form data (currently unused)
    }
}
