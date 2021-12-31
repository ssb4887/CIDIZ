package com.bbs.vo;

public class Basket {
	private String	product_name;
	private String	user_id;
	private int			product_count;
	
	public Basket() {}

	public Basket(String product_name, String user_id, int product_count) {
		this.product_name = product_name;
		this.user_id = user_id;
		this.product_count = product_count;
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

	@Override
	public String toString() {
		return "Basket [product_name=" + product_name + ", user_id=" + user_id + ", product_count=" + product_count
				+ "]";
	}
	
}
