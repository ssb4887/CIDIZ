package com.bbs.vo;

public class Orders {
	
	private String	user_id;
	private String	order_addr;
	private String	product_name;
	private String	color;
	private int			product_price;
	private int			product_count;
	private int			order_price;
	
	public Orders() {}

	public Orders(String user_id, String order_addr, String product_name, String color, int product_price, int product_count,
			int order_price) {
		this.user_id = user_id;
		this.order_addr = order_addr;
		this.product_name = product_name;
		this.color = color;
		this.product_price = product_price;
		this.product_count = product_count;
		this.order_price = order_price;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	public String getOrder_addr() {
		return order_addr;
	}
	
	public void setOrder_addr(String order_addr) {
		this.order_addr = order_addr;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getProduct_price() {
		return product_price;
	}

	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}

	public int getProduct_count() {
		return product_count;
	}

	public void setProduct_count(int product_count) {
		this.product_count = product_count;
	}

	public int getOrder_price() {
		return order_price;
	}

	public void setOrder_price(int order_price) {
		this.order_price = order_price;
	}
	
}
