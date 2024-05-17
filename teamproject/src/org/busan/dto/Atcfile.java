package org.busan.dto;

public class Atcfile {
	private int boardNo;
	private int no;
	private String oriname;
	private String newname;
	private int fsize;
	
	public Atcfile() {}
	public Atcfile(int boardNo, int no, String oriname, String newname, int fsize) {
		super();
		this.boardNo = boardNo;
		this.no = no;
		this.oriname = oriname;
		this.newname = newname;
		this.fsize = fsize;
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
	public String getOriname() {
		return oriname;
	}
	public void setOriname(String oriname) {
		this.oriname = oriname;
	}
	public String getNewname() {
		return newname;
	}
	public void setNewname(String newname) {
		this.newname = newname;
	}
	public int getFsize() {
		return fsize;
	}
	public void setFsize(int fsize) {
		this.fsize = fsize;
	}
	
	@Override
	public String toString() {
		return "Atcfile [boardNo=" + boardNo + ", no=" + no + ", oriname=" + oriname + ", newname=" + newname
				+ ", fsize=" + fsize + "]";
	}
	
}
