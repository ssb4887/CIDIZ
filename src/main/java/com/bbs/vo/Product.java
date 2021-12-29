package com.bbs.vo;

public class Product {
	private String	product_name;
	private int		product_price;
    private String 	color;
    private int		feature; 

    
    public Product() {}

	public Product(String product_name, int product_price, String color, int feature) {
		this.product_name = product_name;
		this.product_price = product_price;
		this.color = color;
		this.feature = feature;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public int getProduct_price() {
		return product_price;
	}

	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getFeature() {
		return feature;
	}

	public void setFeature(int feature) {
		this.feature = feature;
	}
    
}
