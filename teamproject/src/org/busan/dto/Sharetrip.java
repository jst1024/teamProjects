package org.busan.dto;

public class Sharetrip {
	private int no;
	private String title;
	private String regdate;
	private String author;
	private String photo;
	private int liked;
	private int replycount;
	
	
	public Sharetrip() {}
	public Sharetrip(int no, String title, String regdate, String author, String photo, int liked, int replycount) {
		super();
		this.no = no;
		this.title = title;
		this.regdate = regdate;
		this.author = author;
		this.photo = photo;
		this.liked = liked;
		this.replycount = replycount;
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
	public int getreplycount() {
		return replycount;
	}
	public void setreplycount(int replycount) {
		this.replycount = replycount;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	
	@Override
	public String toString() {
		return "Sharetrip [no=" + no + ", title=" + title + ", regdate=" + regdate + ", author=" + author + ", photo="
				+ photo + ", liked=" + liked + ", replycount=" + replycount + "]";
	}
	
}
