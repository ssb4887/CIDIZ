package com.sidiz.bo;

public class Comparison_product {
	private String 	product_name;
	private int 			product_price;
	private String	feature;
	private String	feature_top;

	public Comparison_product() {}

	public Comparison_product(String product_name, int product_price, String feature, String feature_top) {
		this.product_name = product_name;
		this.product_price = product_price;
		this.feature = feature;
		this.feature_top = feature_top;
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
	
}
