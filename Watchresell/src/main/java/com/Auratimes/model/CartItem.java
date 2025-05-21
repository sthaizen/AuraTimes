package com.Auratimes.model;

//Cart item class that store and manage cart details
public class CartItem {
	// Field that store product detail
    private String productName;
    private String watchBrand;
    private double productPrice;
    private String productImage;

 // Constructor to create the cart item with product details
    public CartItem(String productName, String watchBrand, double productPrice, String productImage) {
        this.productName = productName;
        this.watchBrand = watchBrand;
        this.productPrice = productPrice;
        this.productImage = productImage;
    }
    //getter method
    public String getProductName() {
        return productName;
    }

    public String getWatchBrand() {
        return watchBrand;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public String getProductImage() {
        return productImage;
    }
}
