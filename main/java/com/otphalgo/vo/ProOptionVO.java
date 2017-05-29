package com.otphalgo.vo;

public class ProOptionVO {
	private int seq;
	private int code;
	private String sizes;
	private int stock;
	private String color;
	
	public ProOptionVO(){}
	public ProOptionVO(String sizes, int stock, String color){
		this.sizes = sizes;
		this.stock = stock;
		this.color = color;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getSizes() {
		return sizes;
	}
	public void setSizes(String sizes) {
		this.sizes = sizes;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	
	@Override
	public String toString() {
		return "ProOptionVO [seq=" + seq + ", code=" + code + ", sizes=" + sizes + ", stock=" + stock + ", color="
				+ color + "]";
	}
	

	
}
