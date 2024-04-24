package org.busan.dto;

public class Curator {
	private int no;
	private String name;
	private String photo;
	private String addr;
	private String tel;
	private String content;
	private String homepage;
	
	public Curator() {}
	public Curator(int no, String name, String photo, String addr, String tel, String content, String homepage) {
		super();
		this.no = no;
		this.name = name;
		this.photo = photo;
		this.addr = addr;
		this.tel = tel;
		this.content = content;
		this.homepage = homepage;
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
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getHomepage() {
		return homepage;
	}
	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}
	
	@Override
	public String toString() {
		return "Curator [no=" + no + ", name=" + name + ", photo=" + photo + ", addr=" + addr + ", tel=" + tel
				+ ", content=" + content + ", homepage=" + homepage + "]";
	}
	
}
