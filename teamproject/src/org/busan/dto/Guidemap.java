package org.busan.dto;

public class Guidemap {
	private int no;
	private String name;
	private String photo;
	private String link;
	
	public Guidemap() {}
	public Guidemap(int no, String name, String photo, String link) {
		super();
		this.no = no;
		this.name = name;
		this.photo = photo;
		this.link = link;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	
	@Override
	public String toString() {
		return "Guidemap [no=" + no + ", name=" + name + ", photo=" + photo + ", link=" + link + "]";
	}
	
}
