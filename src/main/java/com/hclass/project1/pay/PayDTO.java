package com.hclass.project1.pay;

public class PayDTO {
	
	private long num;
	private String id;
	private String regDate;
	private String time;
	private String name;
	private String healthKind;
	private String business;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getHealthKind() {
		return healthKind;
	}
	public void setHealthKind(String healthKind) {
		this.healthKind = healthKind;
	}
	public String getBusiness() {
		return business;
	}
	public void setBusiness(String business) {
		this.business = business;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public long getNum() {
		return num;
	}
	public void setNum(long num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	
	
}
