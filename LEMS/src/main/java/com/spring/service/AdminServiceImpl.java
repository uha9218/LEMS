
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

public class AdminServiceImpl implements AdminService{
	
	private AdminDAO dao;
	public void setAdminDAO(AdminDAO dao) {
		this.dao = dao;
	}
	
	@Override
	public void login(String id, String pwd) throws NotFoundIdException, InvalidPasswordException, SQLException {
		AdminVO admin = dao.selectAdminByAdminNum(id);
		if (admin == null)
			throw new NotFoundIdException();
		if (!pwd.equals(admin.getPwd()))
			throw new InvalidPasswordException();

	}

	@Override
	public Map<String, Object> getAdminList(SearchListCommand command) throws SQLException {

		Map<String,Object> dataMap = new HashMap<String,Object>();
		
		List<AdminVO> adminList = dao.selectAdminList(command);
		
		int adminCount = dao.selectSearchAdminListCount(command);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCommand(command);
		pageMaker.setTotalCount(adminCount);
		
		dataMap.put("pageMaker", pageMaker);
		dataMap.put("adminList", adminList);
		
		return dataMap;
	}
	@Override
	public AdminVO getAdminDetail(String AdminNum) throws SQLException {
		
		AdminVO admin = dao.selectAdminByAdminNum(AdminNum);
		return admin;
	}
	@Override
	public void registAdmin(AdminVO admin) throws SQLException {
		String adminNum = dao.selectAdminNumSeqNext()+"";
		admin.setAdminNum(adminNum);
		dao.insertAdmin(admin);
	}
	@Override
	public void modifyAdmin(AdminVO admin) throws SQLException {
		dao.updateAdmin(admin);
	}
	@Override
	public void deleteAdmin(String adminNum) throws SQLException {
		dao.deleteAdmin(adminNum);
	}
}

