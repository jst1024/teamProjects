package org.busan.dto;

public class Event {
	private int no;
	private String title;
	private String ondate;
	private String content;
	private String tel;
	private String photo;
	private String homepage;
	
	public Event() {}
	public Event(int no, String title, String ondate, String content, String tel, String photo, String homepage) {
		super();
		this.no = no;
		this.title = title;
		this.ondate = ondate;
		this.content = content;
		this.tel = tel;
		this.photo = photo;
		this.homepage = homepage;
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
	public String getOndate() {
		return ondate;
	}
	public void setOndate(String ondate) {
		this.ondate = ondate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getHomepage() {
		return homepage;
	}
	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}
	
	@Override
	public String toString() {
		return "Event [no=" + no + ", title=" + title + ", ondate=" + ondate + ", content=" + content + ", tel=" + tel
				+ ", photo=" + photo + ", homepage=" + homepage + "]";
	}
	
}
