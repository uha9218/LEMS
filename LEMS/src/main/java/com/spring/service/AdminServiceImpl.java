package com.spring.service;

import com.spring.dao.AdminDAO;

public class AdminServiceImpl {
	private AdminDAO dao;
	public void setAdminDAO(AdminDAO dao) {
		this.dao = dao;
	}
}
