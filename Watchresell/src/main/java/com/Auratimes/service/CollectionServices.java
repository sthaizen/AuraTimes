package com.Auratimes.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Auratimes.config.DbConfig;
import com.Auratimes.model.ProductModel;

public class CollectionServices {
    private Connection dbConnection;
    
    public CollectionServices(){

    	try {
			this.dbConnection = DbConfig.getDbConnection();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
 
    }
    
public List<ProductModel> getAllVehicles() {
		
		List<ProductModel> products = new ArrayList<>();
		String sql = "SELECT * FROM Products";

		try (PreparedStatement stmt = dbConnection.prepareStatement(sql);
		     ResultSet rs = stmt.executeQuery()) {
			while (rs.next()) {
				products.add(AddProductDetails(rs));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return products;
	}

public ProductModel AddProductDetails(ResultSet rs) {
    ProductModel product = new ProductModel();
    try {
        product.setProduct_Name(rs.getString("product_name"));
        product.setDescription(rs.getString("description"));
        product.setProduct_Price(rs.getDouble("product_price"));
        product.setProduct_Img(rs.getString("Product_Img"));
        product.setWatch_brand(rs.getString("watch_brand"));
        product.setPrevious_bid(rs.getInt("previous_bid"));
    } catch (SQLException e) {
        e.printStackTrace(); // Or use a logger for better error handling
    }
    return product;
}

}

