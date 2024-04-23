package org.busan.dto;

public class Tourinfo {
	private int no;
	private String name;
	private String photo;
	private String addr;
	private String tel;
	private String ontime;
	private String content;
	
	public Tourinfo() {}
	public Tourinfo(int no, String name, String photo, String addr, String tel, String ontime, String content) {
		super();
		this.no = no;
		this.name = name;
		this.photo = photo;
		this.addr = addr;
		this.tel = tel;
		this.ontime = ontime;
		this.content = content;
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
	public String getOntime() {
		return ontime;
	}
	public void setOntime(String ontime) {
		this.ontime = ontime;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	@Override
	public String toString() {
		return "Tourinfo [no=" + no + ", name=" + name + ", photo=" + photo + ", addr=" + addr + ", tel=" + tel
				+ ", ontime=" + ontime + ", content=" + content + "]";
	}
	
}
