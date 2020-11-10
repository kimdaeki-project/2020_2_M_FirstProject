package com.hclass.project1.trainer;

import com.hclass.project1.member.MemberDTO;

public class MemberTrainerDTO extends MemberDTO {
private String address;
private String gym;
private String business;

public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getGym() {
	return gym;
}
public void setGym(String gym) {
	this.gym = gym;
}
public String getBusiness() {
	return business;
}
public void setBusiness(String business) {
	this.business = business;
}

}
