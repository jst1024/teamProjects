package org.busan.dto;

public class Member {
	private int no;
	private int grade;
	private String id;
	private String pw;
	private String nickname;
	private String email;
	private String tel;
	private String addr;
	private String postcode;
	public Member() { }
	public Member(int no, int grade, String id, String pw, String nickname, String email, String tel, String addr,
			String postcode) {
		super();
		this.no = no;
		this.grade = grade;
		this.id = id;
		this.pw = pw;
		this.nickname = nickname;
		this.email = email;
		this.tel = tel;
		this.addr = addr;
		this.postcode = postcode;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	@Override
	public String toString() {
		return "Member [no=" + no + ", grade=" + grade + ", id=" + id + ", pw=" + pw + ", nickname=" + nickname + ", email="
				+ email + ", tel=" + tel + ", addr=" + addr + ", postcode=" + postcode + "]";
	}
	
	
}