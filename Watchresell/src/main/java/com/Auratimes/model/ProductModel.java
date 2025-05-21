package com.Auratimes.model;
// product model class that stores and manage product details
public class ProductModel {
	private String Product_Name;
	private String Description;
	private Double Product_Price;
	private String Product_Img;
	private String watch_brand;
	private int previous_bid;
	
	public ProductModel() {
		super();
		
	}
	
	// constructor that create product with product details 
	public ProductModel(String product_Name, String description, Double product_Price, String product_Img, String watch_brand,
			int previous_bid) {
		super();
		Product_Name = product_Name;
		Description = description;
		Product_Price = product_Price;
		Product_Img = product_Img;
		this.watch_brand = watch_brand;
		this.previous_bid = previous_bid;
	}
	// getter and setter method for each product
	public String getProduct_Name() {
		return Product_Name;
	}
	public void setProduct_Name(String product_Name) {
		Product_Name = product_Name;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public Double getProduct_Price() {
		return Product_Price;
	}
	public void setProduct_Price(Double product_Price) {
		Product_Price = product_Price;
	}
	public String getProduct_Img() {
		return Product_Img;
	}
	public void setProduct_Img(String product_Img) {
		Product_Img = product_Img;
	}
	public String getWatch_brand() {
		return watch_brand;
	}
	public void setWatch_brand(String watch_brand) {
		this.watch_brand = watch_brand;
	}
	public int getPrevious_bid() {
		return previous_bid;
	}
	public void setPrevious_bid(int previous_bid) {
		this.previous_bid = previous_bid;
	}
	// Return all the product detail
	@Override
	public String toString() {
		return "ProductModel [Product_Name=" + Product_Name + ", Description=" + Description + ", Product_Price="
				+ Product_Price + ", Product_Img=" + Product_Img + ", watch_brand=" + watch_brand + ", previous_bid="
				+ previous_bid + "]";
	}
	
	
	
}
