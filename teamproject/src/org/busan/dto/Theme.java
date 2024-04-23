package org.busan.dto;

public class Theme {
	private int no;
	private String title;
	private String subtitle;
	private String photo;
	private String content;
	private String reltag;
	private int visited;
	private int liked;
	private String author;
	
	public Theme() {}
	public Theme(int no, String title, String subtitle, String photo, String content, String reltag, int visited,
			int liked, String author) {
		super();
		this.no = no;
		this.title = title;
		this.subtitle = subtitle;
		this.photo = photo;
		this.content = content;
		this.reltag = reltag;
		this.visited = visited;
		this.liked = liked;
		this.author = author;
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
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	
	@Override
	public String toString() {
		return "Theme [no=" + no + ", title=" + title + ", subtitle=" + subtitle + ", photo=" + photo + ", content="
				+ content + ", reltag=" + reltag + ", visited=" + visited + ", liked=" + liked + ", author=" + author
				+ "]";
	}
	
}
