package com.Auratimes.model;

public class CartItem {
    private String productName;
    private String watchBrand;
    private double productPrice;

    public CartItem(String productName, String watchBrand, double productPrice) {
        this.productName = productName;
        this.watchBrand = watchBrand;
        this.productPrice = productPrice;
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
}
