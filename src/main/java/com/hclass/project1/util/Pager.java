package com.hclass.project1.util;

public class Pager {

	private String select;
	private String search;
	
	private String gender;
	private String kind;
	private String business;
	
	private Integer curPage;
	private int startRow;
	private int lastRow;
	private int perPage;
	
	private long startNum;
	private long lastNum;
	private boolean beforeCheck;
	private boolean nextCheck;
	
	private long totalCount;
	
	public Pager() {
		this.perPage=10;
	}
	public void makeRow() {
		startRow = (this.getCurPage()-1)*this.getPerPage()+1;
		lastRow = this.getCurPage()*this.getPerPage();
	}
	
	public void makePage() {
		// 전체 페이지의 개수
		long totalPage = totalCount/10;
		if(this.getTotalCount()%10 != 0) {
			totalPage++;
		}
		// 전체 블럭의 수 구하기
		long totalBlock = totalPage/5;
		if(totalPage%5 != 0) {
			totalBlock++;
		}
		// curPage를 이용한 현재 블럭 번호 찾기
		long curBlock = curPage/5;
		if(this.getCurPage()%5 != 0) {
			curBlock++;
		}
		
		// curBlock을 이용한 시작번호, 끝 번호 계산
		this.startNum = (curBlock-1)*5+1;
		this.lastNum = curBlock*5;
		
		// 현재 블럭번호와 전체 블럭 번호가 같은지 결정
		this.nextCheck = true;
		if(curBlock== totalBlock) {
			nextCheck = !nextCheck;
			lastNum = totalPage;
		}
		this.beforeCheck = true;
		if(curBlock == 1) {
			beforeCheck = !beforeCheck;
		}
	}
	
	public Integer getCurPage() {
		if(curPage == null) {
			curPage=1;
		}
		return curPage;
	}
	public void setCurPage(Integer curPage) {
		if(curPage == null) {
			curPage=1;
		}
		this.curPage = curPage;
	}
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	public int getLastRow() {
		return lastRow;
	}
	public void setLastRow(int lastRow) {
		this.lastRow = lastRow;
	}
	public int getPerPage() {
		return perPage;
	}
	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}
	public long getStartNum() {
		return startNum;
	}
	public void setStartNum(long startNum) {
		this.startNum = startNum;
	}
	public long getLastNum() {
		return lastNum;
	}
	public void setLastNum(long lastNum) {
		this.lastNum = lastNum;
	}
	public boolean isBeforeCheck() {
		return beforeCheck;
	}
	public void setBeforeCheck(boolean beforeCheck) {
		this.beforeCheck = beforeCheck;
	}
	public boolean isNextCheck() {
		return nextCheck;
	}
	public void setNextCheck(boolean nextCheck) {
		this.nextCheck = nextCheck;
	}
	public long getTotalCount() {
		if(totalCount==0) {
			totalCount=1;
		}
		return totalCount;
	}
	public void setTotalCount(long totalCount) {
		this.totalCount = totalCount;
	}

	public String getBusiness() {
		return business;
	}
	public void setBusiness(String business) {
		this.business = business;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getSelect() {
		return select;
	}
	public void setSelect(String select) {
		this.select = select;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	
}