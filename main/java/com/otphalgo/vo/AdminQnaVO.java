package com.otphalgo.vo;

public class AdminQnaVO {
	private int seq;
	private String type;
	private String answer;
	private String title;
	private String writer_num;
	private String contents;
	private int secret;
	private String date;
	
	public AdminQnaVO(){}
	public AdminQnaVO(int seq, String type, String answer, String title, String writer_num, String contents, int secret,
			String date) {
		super();
		this.seq = seq;
		this.type = type;
		this.answer = answer;
		this.title = title;
		this.writer_num = writer_num;
		this.contents = contents;
		this.secret = secret;
		this.date = date;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
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
	public int getSecret() {
		return secret;
	}
	public void setSecret(int secret) {
		this.secret = secret;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	
}
