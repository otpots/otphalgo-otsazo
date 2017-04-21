package com.otphalgo.vo;

public class CartVO {
	private int seq;
	private String buyer_num;
	private int pro_code;
	private int count;
	
	public CartVO(){}
	public CartVO(int seq, String buyer_num, int pro_code, int count) {
		super();
		this.seq = seq;
		this.buyer_num = buyer_num;
		this.pro_code = pro_code;
		this.count = count;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getBuyer_num() {
		return buyer_num;
	}
	public void setBuyer_num(String buyer_num) {
		this.buyer_num = buyer_num;
	}
	public int getPro_code() {
		return pro_code;
	}
	public void setPro_code(int pro_code) {
		this.pro_code = pro_code;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
}
