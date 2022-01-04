package com.bbs.vo;

public class Orders {
	private int			order_num;
	private String	user_id;
	private String 	user_name;
	private String	order_addr;
	private String	user_phone;
	private String	user_tel;
	private String	product_name;
	private String	color;
	private int			product_count;
	private int			order_price;
	private String	order_memo;
	
	public Orders() {}

	public Orders(String user_id, String user_name, String order_addr, String user_phone, String user_tel, String product_name, String color, int product_count,
			int order_price, String order_memo) {
		this.user_id = user_id;
		this.user_name = user_name;
		this.order_addr = order_addr;
		this.user_phone = user_phone;
		this.user_tel = user_tel;
		this.product_name = product_name;
		this.color = color;
		this.product_count = product_count;
		this.order_price = order_price;
		this.order_memo = order_memo;
	}

	public int getOrder_num() {
		return order_num;
	}

	public void setOrder_num(int order_num) {
		this.order_num = order_num;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	
	public String getOrder_addr() {
		return order_addr;
	}
	
	public void setOrder_addr(String order_addr) {
		this.order_addr = order_addr;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public String getUser_tel() {
		return user_tel;
	}

	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
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

	public String getOrder_memo() {
		return order_memo;
	}

	public void setOrder_memo(String order_memo) {
		this.order_memo = order_memo;
	}

	@Override
	public String toString() {
		return "Orders [order_num=" + order_num + ", user_id=" + user_id + ", user_name=" + user_name + ", order_addr="
				+ order_addr + ", user_phone=" + user_phone + ", user_tel=" + user_tel + ", product_name="
				+ product_name + ", color=" + color + ", product_count=" + product_count + ", order_price="
				+ order_price + ", order_memo=" + order_memo + "]";
	}
	
	
	
}
