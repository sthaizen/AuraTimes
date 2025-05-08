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
    
    public List<ProductModel> getAllProducts() {
        List<ProductModel> products = new ArrayList<>();
        try (Connection con = DbConfig.getDbConnection()) {
            String sql = "SELECT * FROM product";
            PreparedStatement pst = con.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                ProductModel product = new ProductModel();
                product.setProduct_Name(rs.getString("product_name"));
                product.setDescription(rs.getString("description"));
                product.setProduct_Price(rs.getDouble("product_price"));
                product.setProduct_Img(rs.getString("product_img"));
                product.setWatch_brand(rs.getString("watch_brand"));
                product.setPrevious_bid(rs.getInt("previous_bid"));
                products.add(product);
              
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }
    public List<ProductModel> getProductsByBrand(String brand) {
        List<ProductModel> products = new ArrayList<>();
        try (Connection con = DbConfig.getDbConnection()) {
            String sql = "SELECT * FROM product WHERE watch_brand = ?";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, brand);
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                ProductModel product = new ProductModel();
                product.setProduct_Name(rs.getString("product_name"));
                product.setDescription(rs.getString("description"));
                product.setProduct_Price(rs.getDouble("product_price"));
                product.setProduct_Img(rs.getString("product_img"));
                product.setWatch_brand(rs.getString("watch_brand"));
                product.setPrevious_bid(rs.getInt("previous_bid"));
                products.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }
}

