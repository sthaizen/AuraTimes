package com.Auratimes.service;
// importing 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Auratimes.config.DbConfig;	//importing db 
import com.Auratimes.model.ProductModel; // importing produc model 
import com.Auratimes.model.UserModel;	// importing user model

// service class for handeling admin dashboard connections by fetciong product and user information from the database
public class AdminDashboardService {
	/**
     * Fetches all products from the 'product' table
     * Used for displaying the products on the Admin Dashboard.
     */
    public List<ProductModel> getAllAdminProducts() {
    	// creating an array list that stores all the retrived data about the product from the database
        List<ProductModel> adminProducts = new ArrayList<>();

        String sql = "SELECT * FROM product ORDER BY product_id DESC";// SQL query for retreving all the data from produc table by product it in desc
        
        //try 
        try (Connection con = DbConfig.getDbConnection();// conncting to db
             PreparedStatement pst = con.prepareStatement(sql); // prepare data
             ResultSet rs = pst.executeQuery()) { // runs sql query using prepare statement and store the data in rs

            while (rs.next()) {
                ProductModel product = new ProductModel();
                
                //set product property that is stored in rs
                product.setProduct_Name(rs.getString("product_name"));
                product.setDescription(rs.getString("description"));
                product.setProduct_Price(rs.getDouble("product_price"));
                product.setProduct_Img(rs.getString("product_img"));
                product.setWatch_brand(rs.getString("watch_brand"));
                product.setPrevious_bid(rs.getInt("previous_bid"));
                
                // add product to adminpoduct list
                adminProducts.add(product);
            }

        } catch (Exception e) { //catch
            System.err.println("Error fetching admin dashboard products: " + e.getMessage());
        }

        return adminProducts;
    }
    public List<UserModel> getAllRegisteredUsers() {
    	// creating an array list that stores all the retrived data about the user from the database
        List<UserModel> users = new ArrayList<>();
        
        //try
        try (Connection con = DbConfig.getDbConnection()) {// connecting db
            String sql = "SELECT Username, Email, DateOfBirth, Gender, PhoneNumber FROM users";// SQL query for retreving mentioned data from user table 
            PreparedStatement pst = con.prepareStatement(sql); // prepare data for execution 
            ResultSet rs = pst.executeQuery();// runs sql query using prepare statement and stores the data in rs
            
            
            while (rs.next()) {
                UserModel user = new UserModel();
                
                //setting user properties that is store in rs
                user.setUsername(rs.getString("Username"));
                user.setEmail(rs.getString("Email"));
                user.setDateOfBirth(rs.getString("DateOfBirth"));
                user.setGender(rs.getString("Gender"));
                user.setPhoneNumber(rs.getString("PhoneNumber"));
                
                // add user to users list
                users.add(user);
            }
            
            //catch
        } catch (Exception e) {
            e.printStackTrace();
        }
        return users;
    }
	 public int getCustomerCount() {
        int count = 0;
        String sql = "SELECT COUNT(*) FROM users WHERE Username NOT IN ('Sujal')";
        try (Connection con = DbConfig.getDbConnection();
             PreparedStatement pst = con.prepareStatement(sql);
             ResultSet rs = pst.executeQuery()) {
            if (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
            System.err.println("Error fetching customer count: " + e.getMessage());
        }
        return count;
    }

    public int getAdminCount() {
        int count = 0;
        String sql = "SELECT COUNT(*) FROM users WHERE Username = 'Sujal'";
        try (Connection con = DbConfig.getDbConnection();
             PreparedStatement pst = con.prepareStatement(sql);
             ResultSet rs = pst.executeQuery()) {
            if (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
            System.err.println("Error fetching admin count: " + e.getMessage());
        }
        return count;
    }

    public int getProductCount() {
        int count = 0;
        String sql = "SELECT COUNT(*) FROM product";
        try (Connection con = DbConfig.getDbConnection();
             PreparedStatement pst = con.prepareStatement(sql);
             ResultSet rs = pst.executeQuery()) {
            if (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
            System.err.println("Error fetching product count: " + e.getMessage());
        }
        return count;
    }

    public double getTotalProductValue() {
        double total = 0;
        String sql = "SELECT SUM(product_price) FROM product";
        try (Connection con = DbConfig.getDbConnection();
             PreparedStatement pst = con.prepareStatement(sql);
             ResultSet rs = pst.executeQuery()) {
            if (rs.next()) {
                total = rs.getDouble(1);
            }
        } catch (Exception e) {
            System.err.println("Error fetching total product value: " + e.getMessage());
        }
        return total;
    }
}
