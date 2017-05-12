package com.otphalgo.vo;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class ProNBoardVO {
	private String code;
	private String num;
	// pro table: code, num, name, price, sizes, stock, color, cate_code
	private String name;
	private int price;
	private String sizes;
	private int stock;
	private String color;
	private int cate_code;
	// pro_board table: seq, title, sub_title, num, code, contents, write_date, viewcount, thumbnail_image
	private int seq;
	private String title;
	private String sub_title;
	private String contents;
	private String thumbnail_image;
	private String write_date;
	private int viewcount;
	private MultipartFile imagefile;
	
	public MultipartFile getImagefile() {
		return imagefile;
	}
	public void setImagefile(MultipartFile imagefile) {
		this.imagefile = imagefile;
		setThumbnail_image(imagefile.getOriginalFilename());
	}
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
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
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
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
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getThumbnail_image() {
		return thumbnail_image;
	}
	public void setThumbnail_image(String thumbnail_image) {
		this.thumbnail_image = thumbnail_image;
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
		return "ProNBoardVO [code=" + code + ", num=" + num + ", name=" + name + ", price=" + price + ", sizes=" + sizes
				+ ", stock=" + stock + ", color=" + color + ", cate_code=" + cate_code + "프로보드테이블: seq=" + seq + ", title="
				+ title + ", sub_title=" + sub_title + ", contents=" + contents + ", thumbnail_image=" + thumbnail_image
				+ ", write_date=" + write_date + ", viewcount=" + viewcount + ", imagefile=" + imagefile + "]";
	}
	
}	
