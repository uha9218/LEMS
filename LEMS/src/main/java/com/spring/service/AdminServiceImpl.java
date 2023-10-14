package com.spring.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.command.PageMaker;
import com.spring.command.SearchListCommand;
import com.spring.dao.AdminDAO;
import com.spring.dto.AdminVO;
import com.spring.exception.InvalidPasswordException;
import com.spring.exception.NotFoundIdException;

public class AdminServiceImpl implements AdminService {

	private AdminDAO adminDAO;

	public void setAdminDAO(AdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}

	@Override
	public void login(String id, String pwd) throws NotFoundIdException, InvalidPasswordException, SQLException {
		AdminVO admin = adminDAO.selectAdminById(id);
		if (admin == null)
			throw new NotFoundIdException();
		if (!pwd.equals(admin.getPwd()))
			throw new InvalidPasswordException();

	}

	@Override
	public Map<String, Object> getAdminList(SearchListCommand command) throws Exception {
		Map<String, Object> dataMap = new HashMap<String, Object>();

		List<AdminVO> adminList = adminDAO.selectSearchAdminList(command);
		dataMap.put("adminList", adminList);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCommand(command);
		pageMaker.setTotalCount(adminDAO.selectSearchAdminListCount(command));
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}

	@Override
	public AdminVO getAdmin(String id) throws Exception {

		AdminVO admin = adminDAO.selectAdminById(id);
		return admin;

	}

	@Override
	public void regist(AdminVO admin) throws Exception {

		adminDAO.insertAdmin(admin);

	}

	@Override
	public void modify(AdminVO admin) throws Exception {

		adminDAO.updateAdmin(admin);

	}

	@Override
	public void remove(String id) throws Exception {

		adminDAO.deleteAdmin(id);

	}

}
