package org.busan.dto;

public class Notice {
	private int no;
	private String title;
	private String content;
	private String regdate;
	
	
	public Notice() { }
	public Notice(int no, String title, String content, String regdate) {
		super();
		this.no = no;
		this.title = title;
		this.content = content;
		this.regdate = regdate;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
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
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "Notice [no=" + no + ", title=" + title + ", content=" + content + ", regdate=" + regdate + "]";
	}
	 
}