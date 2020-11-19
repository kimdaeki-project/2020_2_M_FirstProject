package com.hclass.project1.qna.qnafile;

public class QnaFileDTO {
	private String oriName;
	private String fileName;
	private String id;
	private long num;

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public long getNum() {
		return num;
	}
	public void setNum(long num) {
		this.num = num;
	}
	public String getOriName() {
		return oriName;
	}
	public void setOriName(String oriName) {
		this.oriName = oriName;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
}
