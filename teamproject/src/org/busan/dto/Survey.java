package org.busan.dto;

public class Survey {
	private int no;
	private String title;
	private String ondate;
	private String content;
	private String tel;
	private String photo;
	private String subtitle;
	
	public Survey() {}
	public Survey(int no, String title, String ondate, String content, String tel, String photo, String subtitle) {
		super();
		this.no = no;
		this.title = title;
		this.ondate = ondate;
		this.content = content;
		this.tel = tel;
		this.photo = photo;
		this.subtitle = subtitle;
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
	public String getSubtitle() {
		return subtitle;
	}
	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}
	
	@Override
	public String toString() {
		return "Survey [no=" + no + ", title=" + title + ", ondate=" + ondate + ", content=" + content + ", tel=" + tel
				+ ", photo=" + photo + ", subtitle=" + subtitle + "]";
	}
	
}
