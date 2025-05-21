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

/**
 * Service class for retrieving product collections from the database.
 */
public class CollectionServices {
    private Connection dbConnection; // connecting db
    
    
    /**
     * Constructor to create the database connection.
     */
    public CollectionServices(){ 
    	
    	//exception handeling
    	try {
			this.dbConnection = DbConfig.getDbConnection();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace(); 
		}
 
    }
    
    // Retrieves all products from the product table in the database.
    public List<ProductModel> getAllProducts() {
    	 //creating an array list that stores all the retrived data about the product from the database
        List<ProductModel> products = new ArrayList<>();
        
        try (Connection con = DbConfig.getDbConnection()) { // connecting db, prepering it for execution, executing it and storing retrived data in rs 
            String sql = "SELECT * FROM product";
            PreparedStatement pst = con.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            
            
            while (rs.next()) {
            	
                ProductModel product = new ProductModel(); // creating empty product object 
                
                //set product property that is stored in rs
                product.setProduct_Name(rs.getString("product_name"));
                product.setDescription(rs.getString("description"));
                product.setProduct_Price(rs.getDouble("product_price"));
                product.setProduct_Img(rs.getString("product_img"));
                product.setWatch_brand(rs.getString("watch_brand"));
                product.setPrevious_bid(rs.getInt("previous_bid"));
                
                //adding the product to product list
                products.add(product);
              
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;// returns product
    }
    
    /**
     * Retrieves products by brand from the 'product' table.
     * used for filtering products based on the selected brand.
     */
    public List<ProductModel> getProductsByBrand(String brand) {
    	 //creating an array list that stores all the retrived data about the product from the database
        List<ProductModel> products = new ArrayList<>();
        
        
        try (Connection con = DbConfig.getDbConnection()) { // connecting db, prepering it for execution, executing it and storing retrived data in rs 
            String sql = "SELECT * FROM product WHERE watch_brand = ?";// SQL query for retreving all the data from product teble accordin to the watchbrand
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, brand);//Replace the first ? with the actual string value of brand.
            ResultSet rs = pst.executeQuery();

         // Loop through results and populate product list
            while (rs.next()) {
            	
                ProductModel product = new ProductModel(); // creating an empty product object
                
              //set product property that is stored in rs
                product.setProduct_Name(rs.getString("product_name"));
                product.setDescription(rs.getString("description"));
                product.setProduct_Price(rs.getDouble("product_price"));
                product.setProduct_Img(rs.getString("product_img"));
                product.setWatch_brand(rs.getString("watch_brand"));
                product.setPrevious_bid(rs.getInt("previous_bid"));
                
                // adding product to product lsit 
                products.add(product);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;// returns product
    }
}

