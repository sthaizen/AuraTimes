package com.Auratimes.service;
// importing 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Auratimes.config.DbConfig;
import com.Auratimes.model.ProductModel;

// service class that handels the product detail  by fetciong productinformation from the database
public class ProductDetailService {
	/**
     * Retrieves product details from the database based on the product name.
     */
    public ProductModel getProductByName(String productName) {
    	
        ProductModel product = null;

        String sql = "SELECT * FROM product WHERE product_name = ?"; // SQL query that selects all the product with the given name
        
        try (Connection con = DbConfig.getDbConnection(); // connecting db, prepering it for execution, executing it and storing retrived data in rs 
             PreparedStatement pst = con.prepareStatement(sql)) {
            pst.setString(1, productName);
            ResultSet rs = pst.executeQuery();
            
         //if product name matches fill the ProductModel object with the product detail 
            if (rs.next()) {
            	
                product = new ProductModel(); // creating empty product object
                
              //set product property that is stored in rs
                product.setProduct_Name(rs.getString("product_name"));
                product.setDescription(rs.getString("description"));
                product.setProduct_Price(rs.getDouble("product_price"));
                product.setProduct_Img(rs.getString("product_img"));
                product.setWatch_brand(rs.getString("watch_brand"));
                product.setPrevious_bid(rs.getInt("previous_bid"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return product; //returns product
    }
    
}
