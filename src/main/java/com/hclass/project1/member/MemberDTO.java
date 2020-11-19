package com.hclass.project1.member;

import com.hclass.project1.pay.PayDTO;

public class MemberDTO {
private long num;
private String id;
private String pw;
private String name;
private String phone;
private String email;
private String gender;
private int age;
private String address;
private String gym;
private String business;
private String trainer;
private String kind;

//*********************************** pay
private PayDTO payDTO;

public PayDTO getPayDTO() {
	return payDTO;
}
public void setPayDTO(PayDTO payDTO) {
	this.payDTO = payDTO;
}
// **************************************
public String getKind() {
	return kind;
}
public void setKind(String kind) {
	this.kind = kind;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
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
public String getPw() {
	return pw;
}
public void setPw(String pw) {
	this.pw = pw;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}

public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
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
public String getTrainer() {
	return trainer;
}
public void setTrainer(String trainer) {
	this.trainer = trainer;
}


}
