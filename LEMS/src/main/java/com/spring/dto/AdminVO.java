package com.spring.dto;

import java.util.Date;

public class AdminVO {
	private String adminId;
	private	String adminEmail;
	private String adminPwd;
	private String adminName;
	private String adminAuthority;
	private Date adminRegDate;
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public String getAdminEmail() {
		return adminEmail;
	}
	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}
	public String getAdminPwd() {
		return adminPwd;
	}
	public void setAdminPwd(String adminPwd) {
		this.adminPwd = adminPwd;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminAuthority() {
		return adminAuthority;
	}
	public void setAdminAuthority(String adminAuthority) {
		this.adminAuthority = adminAuthority;
	}
	public Date getAdminRegDate() {
		return adminRegDate;
	}
	public void setAdminRegDate(Date adminRegDate) {
		this.adminRegDate = adminRegDate;
	}
	
	
}
