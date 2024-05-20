package org.busan.dto;

public class Sharetrip {
	private int no;
	private String id;
	private String title;
	private String regdate;
	private int liked;
	private int replycount;
	private String photo;
  
	public Sharetrip() {}

	public Sharetrip(int no, String id, String title, String regdate, int liked, int replycount, String photo) {
		super();
		this.no = no;
		this.id = id;
		this.title = title;
		this.regdate = regdate;
		this.liked = liked;
		this.replycount = replycount;
		this.photo = photo;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public int getLiked() {
		return liked;
	}

	public void setLiked(int liked) {
		this.liked = liked;
	}

	public int getReplycount() {
		return replycount;
	}

	public void setReplycount(int replycount) {
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
		return "Sharetrip [no=" + no + ", id=" + id + ", title=" + title + ", regdate=" + regdate + ", liked=" + liked
				+ ", replycount=" + replycount + ", photo=" + photo + "]";
	}

}
