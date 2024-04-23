package org.busan.dto;

public class Sharetrip {
	private int no;
	private String content;
	private String regdate;
	private String author;
	private int liked;
	private int reply;
	
	public Sharetrip() {}
	public Sharetrip(int no, String content, String regdate, String author, int liked, int reply) {
		super();
		this.no = no;
		this.content = content;
		this.regdate = regdate;
		this.author = author;
		this.liked = liked;
		this.reply = reply;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
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
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public int getLiked() {
		return liked;
	}
	public void setLiked(int liked) {
		this.liked = liked;
	}
	public int getReply() {
		return reply;
	}
	public void setReply(int reply) {
		this.reply = reply;
	}
	
	@Override
	public String toString() {
		return "Sharetrip [no=" + no + ", content=" + content + ", regdate=" + regdate + ", author=" + author
				+ ", liked=" + liked + ", reply=" + reply + "]";
	}
	
}
