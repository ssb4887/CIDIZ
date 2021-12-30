package com.bbs.bo;
// 유저가 담아놓은 장바구니 목록 불러오기
public class UserBasket {
	
	private String product_name;
	private String user_id;
	private int 		 product_count;
	private String product_id;
	private int 		 product_price;
	private String color;
	private String basket_img;
	
	
	public UserBasket() {}


	public UserBasket(String product_name, String user_id, int product_count, String product_id, int product_price,
			String color, String basket_img) {
		this.product_name = product_name;
		this.user_id = user_id;
		this.product_count = product_count;
		this.product_id = product_id;
		this.product_price = product_price;
		this.color = color;
		this.basket_img = basket_img;
	}


	public String getProduct_name() {
		return product_name;
	}


	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}


	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public int getProduct_count() {
		return product_count;
	}


	public void setProduct_count(int product_count) {
		this.product_count = product_count;
	}


	public String getProduct_id() {
		return product_id;
	}


	public void setProduct_id(String product_id) {
		this.product_id = product_id;
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


	public String getBasket_img() {
		return basket_img;
	}


	public void setBasket_img(String basket_img) {
		this.basket_img = basket_img;
	}
	
}
