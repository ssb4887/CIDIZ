package com.bbs.bo;
// 유저의 총 주문금액 불러오기
public class TotalOrderPrice {
	private int product_price;
	private int product_count;
	
	public TotalOrderPrice() {}

	public TotalOrderPrice(int product_price, int product_count) {
		this.product_price = product_price;
		this.product_count = product_count;
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
	
}
