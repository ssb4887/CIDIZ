package com.bbs.bo;

public class UserBasket {
	private String product_id;
	private String product_name;
	private int 		 product_price;
	private String color;
	private String feature;
	private String img;
	private int 		 product_count;
	
	public UserBasket() {}

	public UserBasket(String product_id, String product_name, int product_price, String color, String feature,
			String img, int product_count) {
		this.product_id = product_id;
		this.product_name = product_name;
		this.product_price = product_price;
		this.color = color;
		this.feature = feature;
		this.img = img;
		this.product_count = product_count;
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

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public int getProduct_count() {
		return product_count;
	}

	public void setProduct_count(int product_count) {
		this.product_count = product_count;
	}
	
}
