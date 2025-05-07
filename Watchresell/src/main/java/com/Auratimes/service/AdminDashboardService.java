package com.Auratimes.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Auratimes.config.DbConfig;
import com.Auratimes.model.ProductModel;

public class AdminDashboardService {

    public List<ProductModel> getAllAdminProducts() {
        List<ProductModel> adminProducts = new ArrayList<>();

        String sql = "SELECT * FROM product ORDER BY product_id DESC";

        try (Connection con = DbConfig.getDbConnection();
             PreparedStatement pst = con.prepareStatement(sql);
             ResultSet rs = pst.executeQuery()) {

            while (rs.next()) {
                ProductModel product = new ProductModel();

                product.setProduct_Name(rs.getString("product_name"));
                product.setDescription(rs.getString("description"));
                product.setProduct_Price(rs.getDouble("product_price"));
                product.setProduct_Img(rs.getString("product_img"));
                product.setWatch_brand(rs.getString("watch_brand"));
                product.setPrevious_bid(rs.getInt("previous_bid"));

                adminProducts.add(product);
            }

        } catch (Exception e) {
            System.err.println("Error fetching admin dashboard products: " + e.getMessage());
        }

        return adminProducts;
    }
}
