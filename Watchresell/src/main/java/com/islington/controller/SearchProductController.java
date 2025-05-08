package com.islington.controller;

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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String query = request.getParameter("search");
        List<ProductModel> collectionList;

        if (query != null && !query.trim().isEmpty()) {
            collectionList = service.getProductsByBrand(query.trim());
        } else {
            collectionList = service.getAllProducts();
        }

        request.setAttribute("collectionList", collectionList);
        request.getRequestDispatcher("/WEB-INF/pages/Collection.jsp").forward(request, response);
    }
}