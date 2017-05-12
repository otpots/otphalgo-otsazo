package com.otphalgo.vo;

public class ProCategoryVO {
	private int cate_code;
	private String name;
	
	public ProCategoryVO(){}
	
	public ProCategoryVO(int cate_code, String name) {
		super();
		this.cate_code = cate_code;
		this.name = name;
	}

	public int getCate_code() {
		return cate_code;
	}

	public void setCate_code(int cate_code) {
		this.cate_code = cate_code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
}
