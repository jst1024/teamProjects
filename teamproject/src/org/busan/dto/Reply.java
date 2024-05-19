package org.busan.dto;

public class Reply {
	private int boardNo;			//부모게시글번호 -> fk.board(no)//1-
	private int no;					//댓글번호(pk)				//
	private String id;				//작성자 아이디
	private String regdate;			//등록일						//
	private String content;			//내용						//2-
	
	public Reply() {}

	public Reply(int boardNo, int no, String id, String regdate, String content) {
		super();
		this.boardNo = boardNo;
		this.no = no;
		this.id = id;
		this.regdate = regdate;
		this.content = content;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "Reply [boardNo=" + boardNo + ", no=" + no + ", id=" + id + ", regdate=" + regdate + ", content="
				+ content + "]";
	}
	
}