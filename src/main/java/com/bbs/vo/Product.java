package com.bbs.vo;

public class Product {
	private String	product_id;
	private String	product_name;
	private int			product_price;
    private String 	color;
    private String	feature; 
    private String 	feature_top;
    private String 	basket_img;
    
    public Product() {}

	public Product(String product_id, String product_name, int product_price, String color, String feature, String feature_top, String basket_img) {
		this.product_id = product_id;
		this.product_name = product_name;
		this.product_price = product_price;
		this.color = color;
		this.feature = feature;
		this.feature_top = feature_top;
		this.basket_img = basket_img;
	}

	public String getProduct_id() {
		return product_id;
	}

	public void setProduct_id(String product_id) {
		this.product_id = product_id;
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

	public String getFeature() {
		return feature;
	}

	public void setFeature(String feature) {
		this.feature = feature;
	}
	
	public String getFeature_top() {
		return feature_top;
	}

	public void setFeature_top(String feature_top) {
		this.feature_top = feature_top;
	}

	public String getBasket_img() {
		return basket_img;
	}

	public void setBasket_img(String basket_img) {
		this.basket_img = basket_img;
	}

}
