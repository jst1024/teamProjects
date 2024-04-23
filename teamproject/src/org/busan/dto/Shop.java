package org.busan.dto;

public class Shop {
	private int no;
	private String title;
	private String subtitle;
	private String photo;
	private String content;
	private String addr;
	private String tel;
	private String reltag;
	private int visited;
	private int liked;
	private String homepage;
	
	public Shop() {}
	public Shop(int no, String title, String subtitle, String photo, String content, String addr, String tel,
			String reltag, int visited, int liked, String homepage) {
		super();
		this.no = no;
		this.title = title;
		this.subtitle = subtitle;
		this.photo = photo;
		this.content = content;
		this.addr = addr;
		this.tel = tel;
		this.reltag = reltag;
		this.visited = visited;
		this.liked = liked;
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
	public String getSubtitle() {
		return subtitle;
	}
	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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
	public String getReltag() {
		return reltag;
	}
	public void setReltag(String reltag) {
		this.reltag = reltag;
	}
	public int getVisited() {
		return visited;
	}
	public void setVisited(int visited) {
		this.visited = visited;
	}
	public int getLiked() {
		return liked;
	}
	public void setLiked(int liked) {
		this.liked = liked;
	}
	public String getHomepage() {
		return homepage;
	}
	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}
	
	@Override
	public String toString() {
		return "Shop [no=" + no + ", title=" + title + ", subtitle=" + subtitle + ", photo=" + photo + ", content="
				+ content + ", addr=" + addr + ", tel=" + tel + ", reltag=" + reltag + ", visited=" + visited
				+ ", liked=" + liked + ", homepage=" + homepage + "]";
	}
	
}
