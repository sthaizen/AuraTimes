package com.islington.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.Auratimes.model.ProductModel;
import com.Auratimes.service.CollectionServices;

@WebServlet(asyncSupported = true, urlPatterns = { "/Collection" })

public class CollectionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
      private CollectionServices collectionServices;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CollectionController() {
     collectionServices = new CollectionServices();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	request.setAttribute("collectionList", collectionServices.getAllVehicles());
        request.getRequestDispatcher("/WEB-INF/pages/Collection.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // process form data
    }

	

}