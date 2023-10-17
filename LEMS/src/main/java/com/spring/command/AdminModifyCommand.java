package com.spring.command;

import org.springframework.web.multipart.MultipartFile;

import com.spring.dto.AdminVO;

public class AdminModifyCommand {

	private String adminNum;
	private String pwd;
	private String name;
	private String phone;
	private String email;
	private String roll;
	private MultipartFile picture;

	public String getAdminNum() {
		return adminNum;
	}

	public void setAdminNum(String adminNum) {
		this.adminNum = adminNum;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRoll() {
		return roll;
	}

	public void setRoll(String roll) {
		this.roll = roll;
	}

	public MultipartFile getPicture() {
		return picture;
	}

	public void setPicture(MultipartFile picture) {
		this.picture = picture;
	}

	public AdminVO toAdmin() {
		AdminVO admin = new AdminVO();
		admin.setAdminNum(this.adminNum);
		admin.setPwd(this.pwd);
		admin.setName(this.name);
		admin.setPhone(this.phone.replace("-", ""));
		admin.setEmail(this.email);
		admin.setRoll(this.roll);

		return admin;
	}

}
