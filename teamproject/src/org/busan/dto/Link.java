package org.busan.dto;

public class Link {
	Integer no;
	String title;
	String subTitle;
	String url;
	String photo;
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSubTitle() {
		return subTitle;
	}
	public void setSubTitle(String subTitle) {
		this.subTitle = subTitle;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	@Override
	public String toString() {
		return "Link [no=" + no + ", title=" + title + ", subTitle=" + subTitle + ", url=" + url + ", photo=" + photo
				+ "]";
	}
	public Link(Integer no, String title, String subTitle, String url, String photo) {
		super();
		this.no = no;
		this.title = title;
		this.subTitle = subTitle;
		this.url = url;
		this.photo = photo;
	}
	public Link() {}
	
}
