package com.otphalgo.vo;

public class MemberVO {
	
	private String num;
	private String id;
	private String pw;
	
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
	
	@Override
	public String toString() {
		return "MemberVO [num=" + num + ", id=" + id + ", pw=" + pw + "]";
	}
	
}
