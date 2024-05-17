package org.busan.dto;

public class Attr {
	private int no;
	private String title;
	private String subtitle;
	private String content;
	private String addr;
	private String tel;
	private String reltag;
	private int visited;
	private int liked;
	private String dayoff;
	private String traffic;
	private String fee;
	private String tips;
	private String photo;
	
	public Attr() {}
	public Attr(int no, String title, String subtitle, String content, String addr, String tel, String reltag,
			int visited, int liked, String dayoff, String traffic, String fee, String tips, String photo) {
		super();
		this.no = no;
		this.title = title;
		this.subtitle = subtitle;
		this.content = content;
		this.addr = addr;
		this.tel = tel;
		this.reltag = reltag;
		this.visited = visited;
		this.liked = liked;
		this.dayoff = dayoff;
		this.traffic = traffic;
		this.fee = fee;
		this.tips = tips;
		this.photo = photo;
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
	public String getDayoff() {
		return dayoff;
	}
	public void setDayoff(String dayoff) {
		this.dayoff = dayoff;
	}
	public String getTraffic() {
		return traffic;
	}
	public void setTraffic(String traffic) {
		this.traffic = traffic;
	}
	public String getFee() {
		return fee;
	}
	public void setFee(String fee) {
		this.fee = fee;
	}
	public String getTips() {
		return tips;
	}
	public void setTips(String tips) {
		this.tips = tips;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	
	@Override
	public String toString() {
		return "Attr [no=" + no + ", title=" + title + ", subtitle=" + subtitle + ", content=" + content + ", addr="
				+ addr + ", tel=" + tel + ", reltag=" + reltag + ", visited=" + visited + ", liked=" + liked
				+ ", dayoff=" + dayoff + ", traffic=" + traffic + ", fee=" + fee + ", tips=" + tips + ", photo=" + photo
				+ "]";
	}
	
}