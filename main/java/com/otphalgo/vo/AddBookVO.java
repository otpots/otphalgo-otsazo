package com.otphalgo.vo;

public class AddBookVO {
	
	private int seq;
	private String num;
	private String phone;
	private String address;
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	@Override
	public String toString() {
		return "AddBookVO [seq=" + seq + ", num=" + num + ", phone=" + phone + ", address=" + address + "]";
	}

}
