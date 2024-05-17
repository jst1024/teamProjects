package org.busan.dto;

public class Theme {
	private int no;
	private String title;
	private String subtitle;
	private String content;
	private String reltag;
	private int visited;
	private int liked;
	private String photo;
	
	public Theme() {}
	public Theme(int no, String title, String subtitle, String content, String reltag, int visited, int liked,
			String photo) {
		super();
		this.no = no;
		this.title = title;
		this.subtitle = subtitle;
		this.content = content;
		this.reltag = reltag;
		this.visited = visited;
		this.liked = liked;
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
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	
	@Override
	public String toString() {
		return "Theme [no=" + no + ", title=" + title + ", subtitle=" + subtitle + ", content=" + content + ", reltag="
				+ reltag + ", visited=" + visited + ", liked=" + liked + ", photo=" + photo + "]";
	}
	
}
