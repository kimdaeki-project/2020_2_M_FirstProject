package com.hclass.project1.notice;

import java.util.Date;

public class NoticeDTO {

	private long bno;
	private String title;
	private String writer;
	private String content;
	private Date regDate;
	private long viewcnt;
	public long getBno() {
		return bno;
	}
	
	public void setBno(long bno) {
		this.bno = bno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public long getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(long viewcnt) {
		this.viewcnt = viewcnt;
	}
	
	
}
