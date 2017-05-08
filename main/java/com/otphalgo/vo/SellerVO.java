package com.otphalgo.vo;

public class SellerVO extends MemberVO {

	private String num;
	private String license;
	private String account;
	
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getLicense() {
		return license;
	}
	public void setLicense(String license) {
		this.license = license;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	
	@Override
	public String toString() {
		return "SellerVO [num=" + num + ", license=" + license + ", account=" + account + "]";
	}
	
}
