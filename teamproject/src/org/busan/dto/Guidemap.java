package org.busan.dto;

public class Guidemap {
	private int no;
	private String name;
	private String link;
	private String photo;
	
	public Guidemap() {}
	public Guidemap(int no, String name, String link, String photo) {
		super();
		this.no = no;
		this.name = name;
		this.link = link;
		this.photo = photo;
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
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	
	@Override
	public String toString() {
		return "Guidemap [no=" + no + ", name=" + name + ", link=" + link + ", photo=" + photo + "]";
	}
	
}
