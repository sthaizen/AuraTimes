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

@WebServlet("/filterProduct")
public class FilterProductController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String brand = request.getParameter("brand");

        CollectionServices service = new CollectionServices();
        List<ProductModel> filteredProducts;

        if (brand != null && !brand.trim().isEmpty()) {
            filteredProducts = service.getProductsByBrand(brand.trim());
        } else {
            filteredProducts = service.getAllProducts();
        }

        request.setAttribute("collectionList", filteredProducts);
        request.getRequestDispatcher("/WEB-INF/pages/Collection.jsp").forward(request, response);
    }
}
