package com.otphalgo.vo;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class ProNBoardVO {
	private int code;
	private String id;
	// pro table: code, id, name, price, color, cate_code
	private String name;
	private int price;
	private int cate_code;
	private String thumbnail_image;
	// pro_board table: seq, title, sub_title, id, code, contents, write_date, viewcount, thumbnail_image
	private int seq;
	private String title;
	private String contents;
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
	
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
		return "ProNBoardVO [code=" + code + ", id=" + id + ", name=" + name + ", price=" + price + ", cate_code="
				+ cate_code + ", thumbnail_image=" + thumbnail_image + ", seq=" + seq + ", title=" + title
				+ ", contents=" + contents + ", write_date=" + write_date + ", viewcount=" + viewcount + ", imagefile="
				+ imagefile + "]";
	}
	
	
	
	
	
	
	
	
}	
