package com.otphalgo.vo;

public class OrderHistroyVO {
	private String order_num;
	private String mem_num;
	private int pro_code;
	private String order_date;
	private String pay_way;
	private String pay_date;
	private String status;
	
	public OrderHistroyVO(){}
	public OrderHistroyVO(String order_num, String mem_num, int pro_code, String order_date, String pay_way,
			String pay_date, String status) {
		super();
		this.order_num = order_num;
		this.mem_num = mem_num;
		this.pro_code = pro_code;
		this.order_date = order_date;
		this.pay_way = pay_way;
		this.pay_date = pay_date;
		this.status = status;
	}
	public String getOrder_num() {
		return order_num;
	}
	public void setOrder_num(String order_num) {
		this.order_num = order_num;
	}
	public String getMem_num() {
		return mem_num;
	}
	public void setMem_num(String mem_num) {
		this.mem_num = mem_num;
	}
	public int getPro_code() {
		return pro_code;
	}
	public void setPro_code(int pro_code) {
		this.pro_code = pro_code;
	}
	public String getOrder_date() {
		return order_date;
	}
	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}
	public String getPay_way() {
		return pay_way;
	}
	public void setPay_way(String pay_way) {
		this.pay_way = pay_way;
	}
	public String getPay_date() {
		return pay_date;
	}
	public void setPay_date(String pay_date) {
		this.pay_date = pay_date;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
}


