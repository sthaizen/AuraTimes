package com.Auratimes.model;

public class CartItem {
    private String productName;
    private String watchBrand;
    private double productPrice;
    private String productImage;

    public CartItem(String productName, String watchBrand, double productPrice, String productImage) {
        this.productName = productName;
        this.watchBrand = watchBrand;
        this.productPrice = productPrice;
        this.productImage = productImage;
    }

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
