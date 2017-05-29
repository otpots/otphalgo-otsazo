package com.otphalgo.vo;

public class ProQnaVO {
	private int set;
	private int code;
	private int status;
	private String id;
	private String contents;
	private String write_date;
	private String reply;
	private int type;
	
	public ProQnaVO(){}
	public ProQnaVO(int set, int code, int status, String id, String contents, String write_date, String reply,
			int type) {
		super();
		this.set = set;
		this.code = code;
		this.status = status;
		this.id = id;
		this.contents = contents;
		this.write_date = write_date;
		this.reply = reply;
		this.type = type;
	}
	
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public int getSet() {
		return set;
	}
	public void setSet(int set) {
		this.set = set;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getWrite_date() {
		return write_date;
	}
	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	@Override
	public String toString() {
		return "ProQnaVO [set=" + set + ", code=" + code + ", status=" + status + ", id=" + id + ", contents="
				+ contents + ", write_date=" + write_date + ", reply=" + reply + ", type=" + type + "]";
	}
	
	
	
	
	
}
