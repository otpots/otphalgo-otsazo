package com.otphalgo.vo;

public class EmailVO {
	
	private String title;
	private String content;
	private String receiver;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	
	@Override
	public String toString() {
		return "EmailVO [title=" + title + ", content=" + content + ", receiver=" + receiver + "]";
	}

}
