package com.otphalgo.vo;

public class ProNBoardVO {
	private int code;
	// pro_ : pro table
	private String seller_num;
	private String name;
	private int price;
	private String sizes;
	private double sal_rate;
	private int stock;
	private String image;
	private int cate_code;
	// bo_ : pro_board table
	private int seq;
	private String title;
	private String sub_title;
	private String writer_num;
	private String contents;
	private String contents_image;
	private String write_date;
	private int viewcount;
	
	public ProNBoardVO(){}
	public ProNBoardVO(int code, String seller_num, String name, int price, String sizes, double sal_rate, int stock,
			String image, int cate_code, int seq, String title, String sub_title, String writer_num, String contents,
			String contents_image, String write_date, int viewcount) {
		super();
		this.code = code;
		this.seller_num = seller_num;
		this.name = name;
		this.price = price;
		this.sizes = sizes;
		this.sal_rate = sal_rate;
		this.stock = stock;
		this.image = image;
		this.cate_code = cate_code;
		this.seq = seq;
		this.title = title;
		this.sub_title = sub_title;
		this.writer_num = writer_num;
		this.contents = contents;
		this.contents_image = contents_image;
		this.write_date = write_date;
		this.viewcount = viewcount;
	}
	
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getSeller_num() {
		return seller_num;
	}
	public void setSeller_num(String seller_num) {
		this.seller_num = seller_num;
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
	public String getSizes() {
		return sizes;
	}
	public void setSizes(String sizes) {
		this.sizes = sizes;
	}
	public double getSal_rate() {
		return sal_rate;
	}
	public void setSal_rate(double sal_rate) {
		this.sal_rate = sal_rate;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getCate_code() {
		return cate_code;
	}
	public void setCate_code(int cate_code) {
		this.cate_code = cate_code;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSub_title() {
		return sub_title;
	}
	public void setSub_title(String sub_title) {
		this.sub_title = sub_title;
	}
	public String getWriter_num() {
		return writer_num;
	}
	public void setWriter_num(String writer_num) {
		this.writer_num = writer_num;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getContents_image() {
		return contents_image;
	}
	public void setContents_image(String contents_image) {
		this.contents_image = contents_image;
	}
	public String getWrite_date() {
		return write_date;
	}
	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}
	public int getViewcount() {
		return viewcount;
	}
	public void setViewcount(int viewcount) {
		this.viewcount = viewcount;
	}
	@Override
	public String toString() {
		return "ProNBoardVO [code=" + code + ", seller_num=" + seller_num + ", name=" + name + ", price=" + price
				+ ", sizes=" + sizes + ", sal_rate=" + sal_rate + ", stock=" + stock + ", image=" + image
				+ ", cate_code=" + cate_code + ", seq=" + seq + ", title=" + title + ", sub_title=" + sub_title
				+ ", writer_num=" + writer_num + ", contents=" + contents + ", contents_image=" + contents_image
				+ ", write_date=" + write_date + ", viewcount=" + viewcount + "]";
	}

}
