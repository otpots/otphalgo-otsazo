package com.otphalgo.vo;

public class ProNBoardVO {
	private int code;
	private String pro_seller_num;
	private String pro_name;
	private int pro_price;
	private String pro_size;
	private double pro_sal_rate;
	private int pro_stock;
	private String pro_image;
	private int pro_cate_code;
	private int bo_seq;
	private String bo_title;
	private String bo_sub_title;
	private String bo_writer_num;
	private String bo_contents;
	private String bo_contents_image;
	private String bo_date;
	private int bo_viewcount;
	
	public ProNBoardVO(){}
	public ProNBoardVO(int code, String pro_seller_num, String pro_name, int pro_price, String pro_size,
			double pro_sal_rate, int pro_stock, String pro_image, int pro_cate_code, int bo_seq, String bo_title,
			String bo_sub_title, String bo_writer_num, String bo_contents, String bo_contents_image, String bo_date,
			int bo_viewcount) {
		super();
		this.code = code;
		this.pro_seller_num = pro_seller_num;
		this.pro_name = pro_name;
		this.pro_price = pro_price;
		this.pro_size = pro_size;
		this.pro_sal_rate = pro_sal_rate;
		this.pro_stock = pro_stock;
		this.pro_image = pro_image;
		this.pro_cate_code = pro_cate_code;
		this.bo_seq = bo_seq;
		this.bo_title = bo_title;
		this.bo_sub_title = bo_sub_title;
		this.bo_writer_num = bo_writer_num;
		this.bo_contents = bo_contents;
		this.bo_contents_image = bo_contents_image;
		this.bo_date = bo_date;
		this.bo_viewcount = bo_viewcount;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getPro_seller_num() {
		return pro_seller_num;
	}
	public void setPro_seller_num(String pro_seller_num) {
		this.pro_seller_num = pro_seller_num;
	}
	public String getPro_name() {
		return pro_name;
	}
	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}
	public int getPro_price() {
		return pro_price;
	}
	public void setPro_price(int pro_price) {
		this.pro_price = pro_price;
	}
	public String getPro_size() {
		return pro_size;
	}
	public void setPro_size(String pro_size) {
		this.pro_size = pro_size;
	}
	public double getPro_sal_rate() {
		return pro_sal_rate;
	}
	public void setPro_sal_rate(double pro_sal_rate) {
		this.pro_sal_rate = pro_sal_rate;
	}
	public int getPro_stock() {
		return pro_stock;
	}
	public void setPro_stock(int pro_stock) {
		this.pro_stock = pro_stock;
	}
	public String getPro_image() {
		return pro_image;
	}
	public void setPro_image(String pro_image) {
		this.pro_image = pro_image;
	}
	public int getPro_cate_code() {
		return pro_cate_code;
	}
	public void setPro_cate_code(int pro_cate_code) {
		this.pro_cate_code = pro_cate_code;
	}
	public int getBo_seq() {
		return bo_seq;
	}
	public void setBo_seq(int bo_seq) {
		this.bo_seq = bo_seq;
	}
	public String getBo_title() {
		return bo_title;
	}
	public void setBo_title(String bo_title) {
		this.bo_title = bo_title;
	}
	public String getBo_sub_title() {
		return bo_sub_title;
	}
	public void setBo_sub_title(String bo_sub_title) {
		this.bo_sub_title = bo_sub_title;
	}
	public String getBo_writer_num() {
		return bo_writer_num;
	}
	public void setBo_writer_num(String bo_writer_num) {
		this.bo_writer_num = bo_writer_num;
	}
	public String getBo_contents() {
		return bo_contents;
	}
	public void setBo_contents(String bo_contents) {
		this.bo_contents = bo_contents;
	}
	public String getBo_contents_image() {
		return bo_contents_image;
	}
	public void setBo_contents_image(String bo_contents_image) {
		this.bo_contents_image = bo_contents_image;
	}
	public String getBo_date() {
		return bo_date;
	}
	public void setBo_date(String bo_date) {
		this.bo_date = bo_date;
	}
	public int getBo_viewcount() {
		return bo_viewcount;
	}
	public void setBo_viewcount(int bo_viewcount) {
		this.bo_viewcount = bo_viewcount;
	}
	
}
