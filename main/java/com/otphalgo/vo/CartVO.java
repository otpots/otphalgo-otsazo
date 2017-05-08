package com.otphalgo.vo;

public class CartVO {
	
	//session
	private String num;
	
	//pro_board table
	private int seq;
	private String thumbnail_image;
	
	//pro
	private String code;
	private String name;
	private int price;
	
	//cart
	private int count;
	
	
	
	public String getNum() {
		return num;
	}



	public void setNum(String num) {
		this.num = num;
	}



	public int getSeq() {
		return seq;
	}



	public void setSeq(int seq) {
		this.seq = seq;
	}



	public String getThumbnail_image() {
		return thumbnail_image;
	}



	public void setThumbnail_image(String thumbnail_image) {
		this.thumbnail_image = thumbnail_image;
	}



	public String getCode() {
		return code;
	}



	public void setCode(String code) {
		this.code = code;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public int getPrice() {
		return price;
	}



	public void setPrice(int price) {
		this.price = price;
	}



	public int getCount() {
		return count;
	}



	public void setCount(int count) {
		this.count = count;
	}



	@Override
	public String toString() {
		return "CartVO [num=" + num + ", seq=" + seq + ", thumbnail_image=" + thumbnail_image + ", code=" + code
				+ ", name=" + name + ", price=" + price + ", count=" + count + "]";
	}
		
}
