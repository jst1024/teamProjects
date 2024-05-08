package org.busan.dto;

public class Notice {
	private int no;
	private String title;
	private String content;
	private String resdate;
	
	
	public Notice() { }
	public Notice(int no, String title, String content, String resdate) {
		super();
		this.no = no;
		this.title = title;
		this.content = content;
		this.resdate = resdate;
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
	public String getResdate() {
		return resdate;
	}
	public void setResdate(String resdate) {
		this.resdate = resdate;
	}

	@Override
	public String toString() {
		return "Notice [no=" + no + ", title=" + title + ", content=" + content + ", resdate=" + resdate + "]";
	}
	 
}