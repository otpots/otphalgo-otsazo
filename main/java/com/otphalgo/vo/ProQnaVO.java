package com.otphalgo.vo;

public class ProQnaVO {
	private int seq;
	private int code;
	private String answer;
	private String title;
	private String writer_num;
	private String contents;
	private int secret;
	private String write_date;
	
	public ProQnaVO(){}
	public ProQnaVO(int seq, int code, String answer, String title, String writer_num, String contents, int secret,
			String write_date) {
		super();
		this.seq = seq;
		this.code = code;
		this.answer = answer;
		this.title = title;
		this.writer_num = writer_num;
		this.contents = contents;
		this.secret = secret;
		this.write_date = write_date;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
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
	public String getWrite_date() {
		return write_date;
	}
	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}
	
	
	
}
