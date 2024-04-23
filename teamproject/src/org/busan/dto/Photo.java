package org.busan.dto;

public class Photo {
	private int no;
	private String photo;
	private String title;
	private String copyright;
	private String hashtag;
	
	public Photo() {}
	public Photo(int no, String photo, String title, String copyright, String hashtag) {
		super();
		this.no = no;
		this.photo = photo;
		this.title = title;
		this.copyright = copyright;
		this.hashtag = hashtag;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCopyright() {
		return copyright;
	}
	public void setCopyright(String copyright) {
		this.copyright = copyright;
	}
	public String getHashtag() {
		return hashtag;
	}
	public void setHashtag(String hashtag) {
		this.hashtag = hashtag;
	}
	
	@Override
	public String toString() {
		return "Photo [no=" + no + ", photo=" + photo + ", title=" + title + ", copyright=" + copyright + ", hashtag="
				+ hashtag + "]";
	}
	
}
