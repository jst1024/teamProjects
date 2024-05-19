package org.busan.dto;

public class Curator {
	private String title;
	private String tel;
	private String ontime;
	private String photo;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getOntime() {
		return ontime;
	}
	public void setOntime(String ontime) {
		this.ontime = ontime;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	@Override
	public String toString() {
		return "Curator [title=" + title + ", tel=" + tel + ", ontime=" + ontime + ", photo=" + photo + "]";
	}
	public Curator(String title, String ontime, String tel, String photo) {
		super();
		this.title = title;
		this.tel = tel;
		this.ontime = ontime;
		this.photo = photo;
	}
	public Curator() {}
}
