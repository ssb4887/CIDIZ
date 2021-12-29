package com.bbs.vo;

public class Product {
	private String	product_name;
	private int		 	product_price;
    private String 	color;
    private int		 	head; 
    private int		 	lumbar; 
    private int		 	seat; 
    private int		 	armrest; 
    private int		 	tilt;
    private int		 	feature; 
    
    public Product() {}

	public Product(String product_name, int product_price, String color, int head, int lumbar, int seat, int armrest,
			int tilt, int feature) {
		this.product_name = product_name;
		this.product_price = product_price;
		this.color = color;
		this.head = head;
		this.lumbar = lumbar;
		this.seat = seat;
		this.armrest = armrest;
		this.tilt = tilt;
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

	public int getHead() {
		return head;
	}

	public void setHead(int head) {
		this.head = head;
	}

	public int getLumbar() {
		return lumbar;
	}

	public void setLumbar(int lumbar) {
		this.lumbar = lumbar;
	}

	public int getSeat() {
		return seat;
	}

	public void setSeat(int seat) {
		this.seat = seat;
	}

	public int getArmrest() {
		return armrest;
	}

	public void setArmrest(int armrest) {
		this.armrest = armrest;
	}

	public int getTilt() {
		return tilt;
	}

	public void setTilt(int tilt) {
		this.tilt = tilt;
	}

	public int getFeature() {
		return feature;
	}

	public void setFeature(int feature) {
		this.feature = feature;
	}
    
}
