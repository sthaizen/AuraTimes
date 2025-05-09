package com.Auratimes.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Auratimes.config.DbConfig;
import com.Auratimes.model.ProductModel;

public class ProductDetailService {
	
    public ProductModel getProductByName(String productName) {
        ProductModel product = null;

        String sql = "SELECT * FROM product WHERE product_name = ?";
        try (Connection con = DbConfig.getDbConnection();
             PreparedStatement pst = con.prepareStatement(sql)) {

            pst.setString(1, productName);
            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                product = new ProductModel();
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

        return product;
    }
    
}
