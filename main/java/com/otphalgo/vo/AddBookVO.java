package com.otphalgo.vo;

public class AddBookVO {
	
	private String num;
	private String address2;
	private String address3;
	private String address4;
	
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getAddress3() {
		return address3;
	}
	public void setAddress3(String address3) {
		this.address3 = address3;
	}
	public String getAddress4() {
		return address4;
	}
	public void setAddress4(String address4) {
		this.address4 = address4;
	}
	
	@Override
	public String toString() {
		return "AddBookVO [num=" + num + ", address2=" + address2 + ", address3=" + address3 + ", address4=" + address4
				+ "]";
	}

}
