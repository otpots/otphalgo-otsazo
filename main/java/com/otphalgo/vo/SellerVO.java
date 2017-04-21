package com.otphalgo.vo;

public class SellerVO {
	private String num;
	private String id;
	private String pw;
	private String name;
	private String email;
	private String reg_date;
	private String phone;
	private String address;
	private String license;
	private String account;
	
	public SellerVO(){}
	public SellerVO(String num, String id, String pw, String name, String email, String reg_date, String phone,
			String address, String license, String account) {
		super();
		this.num = num;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.email = email;
		this.reg_date = reg_date;
		this.phone = phone;
		this.address = address;
		this.license = license;
		this.account = account;
	}
	
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
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
		return "SellerVO [num=" + num + ", id=" + id + ", pw=" + pw + ", name=" + name + ", email=" + email
				+ ", reg_date=" + reg_date + ", phone=" + phone + ", address=" + address + ", license=" + license
				+ ", account=" + account + "]";
	}
	
	
}
